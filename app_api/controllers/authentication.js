var db     = require('../models/db');
var env    = require('get-env');
var chalk  = require('chalk');
var util   = require('util');
var crypto = require('crypto');
var jwt    = require('jsonwebtoken');

var debugLogin     = require('debug')('app-auth:login');
var debugJson      = require('debug')('app-auth:json');
var debugPassword  = require('debug')('app-auth:json');
var info           = require('debug')('info:app-auth');
var danger         = require('debug')('danger:app-auth');



var sendJsonResponse = function(res, status, content) {
  res.status(status);
  res.json(content);
};


var errorObjToArray = function(obj) {
  var array = [];
  for (err in obj) {
    array.push(err + ": " + obj[err]);
  }
  return array;
}

var atob = function(text) {
  var buf = new Buffer(text, "base64");
  var bytes = [];
  for ( var i = buf.length; i >= 0; i-- ) {
    bytes[i] = String.fromCharCode(buf[i]);
  }

  return bytes.join("");
};


// Note: returnData should be passed with the return objects already set as either
// empty  arrays or null.,

var sendJsonErrorResponse = function(title, level, errorTextArray, returnData, res) {

    debugJson("Sending JSON of %o", errorTextArray);
    var errorMsg = {};

    // send this to the console, for sure, if dev or prod
    //console.log(chalk.red(title + ": " + util.inspect(errorTextArray, false, null)));
    // set up error to be returned for possible display
    errorMsg['title'] = title;
    errorMsg['level'] = level;
    errorMsg['text']  = [];
    if (env() === 'dev') {   // show the full error
      errorMsg['text'] = errorTextArray;
    }
    else {
      errorMsg['text'].push("Please report this error to " + process.env.WEB_MASTER_EMAIL);
    }
    returnData['errors'].push(errorMsg);

    //debugJson("in sendJsonErrorResponse just before send");
    sendJsonResponse(res, 400, returnData);
};


var sendJsonSQLErrorResponse = function(title, level, sqlError, returnData, res) {

  var errorMsgArray = errorObjToArray(sqlError);
  sendJsonErrorResponse(title, level, errorMsgArray, returnData, res);

};


// this is for one line responses, though the text is an array that can have
// multiple entries.

var sendJsonSimpleErrorResponse = function(title, level, text, returnData, res) {

    var errorMsgArray = [];
    errorMsgArray.push(text);
   // debugJson("sending response");
    sendJsonErrorResponse(title, level, errorMsgArray, returnData, res);
};


// *************************** hash functions **************************************

var createSaltAndHash = function(password) {
  var salt = crypto.randomBytes(16).toString('hex');
  var hash = crypto.pbkdf2Sync(password, salt, 1000, 64, 'sha1').toString('hex');
  return ({'salt' : salt, 'hash' : hash});
};


var recreateHash = function(salt, password) {
  var hash = crypto.pbkdf2Sync(password, salt, 1000, 64, 'sha1').toString('hex');
  return hash;
};



var createJWT = function(userInfo) {

  var expiry = new Date();
  expiry.setDate(expiry.getDate() + 7);

  return jwt.sign( {
    workerID:  userInfo['workerID'],
    firstName: userInfo['firstName'],
    lastName:  userInfo['lastName'],
    roles:     userInfo['roles'],
    exp:       parseInt(expiry.getTime() / 1000),
  },  process.env.JWT_SECRET);
};



var createUserInfoFromRows = function(rows) {

  var userInfo = {};
  userInfo['roles'] = [];
  for (i = 0; i < rows.length; ++i) {
    //debugLogin(chalk.blue("in api login: row : " + util.inspect(rows[i], false, null)));
    userInfo['workerID']  = rows[i]['worker_id'];
    userInfo['firstName'] = rows[i]['first_name'];
    userInfo['lastName']  = rows[i]['last_name'];
    userInfo['salt']      = rows[i]['salt'];
    userInfo['hash']      = rows[i]['hash'];
    userInfo['roles'].push(rows[i]['role_id']);
  }
  return userInfo;
};


// *************************** login  **************************************

module.exports.login = function (req, res) {

  // we expect to return a token and no errors, but will return null for token if there are errors and
  // an empty list if there are not.
  var workerEmail = null;
  var password    = null;
  var query = null;
  var data = {};
  data['token']           = null;
  data['loginSuccessful'] = false;
  data['errors'] = [];

  debugLogin("in api login");
  debugLogin(chalk.green("err : " + util.inspect(req.body, false, null)));

  if ( !req.body.email ) {
    danger("no email in req.body");
    sendJsonSimpleErrorResponse("EMAIL_PARAM_NOT_PASSED", "Danger", "missing req.body.email", data, res);
    return;
  }
  else {
    workerEmail = req.body.email;
  }


  if ( !req.body.password ) {
    danger("no password in req.body");
    data["email"] = workerEmail;  // send this back to refill in the user field when refreshing the page
    sendJsonSimpleErrorResponse("PASSWORD_PARAM_NOT_PASSED", "Danger", "missing req.body.password", data, res);
    return;
   }
   else {
     password = req.body.password;
  }


  query =
    "select " +
    "  w.worker_id, " +
    "  w.first_name, " +
    "  w.last_name, " +
    "  w.salt, " +
    "  w.hash, " +
    "  wr.role_id " +
    "from workers w, " +
    "     worker_roles wr " +
    "where w.worker_id = wr.worker_id and " +
    "      w.active    = 1 and " +
    "      w.email     = '" + workerEmail + "'";

  //debugLogin("query : " + query);
  query = 'call login(';
  query += db.connection.escape(workerEmail) + ")";  // can't be blank
  db.connection.query(query, function(err, rows, fields) {

  //debugLogin(chalk.green("err : " + util.inspect(err, false, null)));
  //debugLogin(chalk.green("rows : " + util.inspect(rows, false, null)));
  //debugLogin(chalk.green("fields : " + util.inspect(fields, false, null)));

    var userInfo = null;
    var hashFromInput = null;

    if (err) {
      sendJsonSQLErrorResponse("Error retrieving data from database for user " + workerEmail + " role information",
                               "Danger",
                               err,
                               data,
                               res);
    } else {

      if (rows.length === 0) {
        danger("user input incorrect email for login of %s", workerEmail);
        data['loginSuccessful'] = false;
        data['token'] = "NO_MATCHING_EMAIL_FOUND";
      }
      else {
        //data['roles'] =  rows;
        // there may be multiple rows for this user, so we are going to need to loop through and
        // get the roles.  All other data in each row will be duplicated
        userInfo = createUserInfoFromRows(rows[0]);

        //debugLogin(chalk.blue("in api login: " + util.inspect(userInfo, false, null)));
        hashFromInput = recreateHash(userInfo['salt'], password);
        //debugLogin(chalk.blue("hash from input: " + util.inspect(hashFromInput, false, null)));
        if (hashFromInput === userInfo['hash']) {
          info("user input correct password for login of %s", workerEmail);
          data['loginSuccessful'] = true;
          data['token'] = createJWT(userInfo);
          //car parts = data['token'].split('.');
          //debugLogin("part 1 : " + atob(parts[1]));
        }
        else {
          danger("user input incorrect password for login of %s", workerEmail);
          data['loginSuccessful'] = false;
          data['token'] = "PASSWORD_DOES_NOT_MATCH";
        }
      }
      sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.setPassword = function (req, res) {

  var workerID    = null;
  var password    = null;
  var saltAndHash = null;

  if (!req.body.worker_id ) { sendJsonResponse(res, 404, {"message": "login(): worker_id param not passed"}); return;};
  if (!req.body.password )  { sendJsonResponse(res, 404, {"message": "login(): password param not passed"}); return; };

  debugPassword(chalk.blue("in api setPassord: req.body " + util.inspect(req.body, false, null)));
  debugPassword(chalk.blue("in api setPassord: req.payload " + util.inspect(req.payload, false, null)));

  workerID = req.body.worker_id;
  password = req.body.password;

  var saltAndHash = createSaltAndHash(password);

  var query = "call set_password (" + workerID + ", '" + saltAndHash.salt + "', '" +  saltAndHash.hash + "')";

  //debugPassword(chalk.blue("query : " + util.inspect(query, false, null)));

  db.connection.query(query, function(err, rows, fields) {

  //debugPassword(chalk.green("err : " + util.inspect(err, false, null)));
  //debugPassword(chalk.green("rows : " + util.inspect(rows, false, null)));
  //debugPassword(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['token'] = null;
    data['errors'] = [];
    var userInfo = null;

    if (err) {
      sendJsonSQLErrorResponse("Error retrieving data from database for user " + workerID + " role information",
                               "Danger",
                               err,
                               data,
                               res);
      return;
    } else {

      if (rows[0].length === 0) {
        //data['token'] = "NO_MATCHING_EMAIL_FOUND";
        sendJsonSQLErrorResponse("Setting password for " + workerID + " did not return any role information.",
                                 "Danger",
                                 err,
                                 data,
                                 res);
        return;
      }
      else {
        //data['roles'] =  rows;
        // there may be multiple rows for this user, so we are going to need to loop through and
        // get the roles.  All other data in each row will be duplicated
        // When returning rows from a stored procedure, the "rows" are a little different in organization
        // rows : [ [ RowDataPacket {
        //       worker_id: 1,
        //       first_name: 'root',
        //       last_name: 'root',

        userInfo = createUserInfoFromRows(rows[0]);

        //debugPassword(chalk.blue("in api login: " + util.inspect(userInfo, false, null)));
        data['token'] = createJWT(userInfo);
        //car parts = data['token'].split('.');
        //debugPassword("part 1 : " + atob(parts[1]));
        sendJsonResponse(res, 201, data);
      }
    }
  });
};



module.exports.createNewWorker = function (req, res) {

  var first_name;
  var last_name;
  var initials;
  var email;
  var phone_number;
  var password;
  var saltAndHash;
  var query;

  if (!req.body.first_name )  { sendJsonResponse(res, 404, {"message": "createNewUser(): first_name param not passed"}); return;};
  if (!req.body.last_name  )  { sendJsonResponse(res, 404, {"message": "createNewUser(): last_name param not passed"}); return;};
  if (!req.body.initials  )   { sendJsonResponse(res, 404, {"message": "createNewUser(): initials param not passed"}); return;};

  first_name   = req.body.first_name;
  last_name    = req.body.last_name;
  initials     = req.body.initials;
  email        = req.body.email;
  phone_number = req.body.phone_number;
  password     = req.body.password;

  query = 'call create_new_worker(';
  query += db.connection.escape(first_name) + ", ";  // can't be blank
  query += db.connection.escape(last_name) + ", ";   // can't be blank
  query += db.connection.escape(initials) + ", ";    // can't be blank

  if (req.body.email === "") {   // optional
    query += "NULL, ";
  }
  else {
    query += db.connection.escape(email) + ", ";
  }
  if (req.body.phone_number === "") {   // optional
    query += "NULL, ";
  }
  else {
    query += db.connection.escape(phone_number) + ", ";
  }
  if (req.body.password === "") {   // optional
    query += "NULL, NULL)";
  }
  else {
    saltAndHash = createSaltAndHash(password);
    query += db.connection.escape(saltAndHash.salt) + ", ";
    query += db.connection.escape(saltAndHash.hash) + ")";
  }

  debugLogin("query: ", query);

  db.connection.query(query, function(err, rows, fields) {

    debugPassword(chalk.green("err : " + util.inspect(err, false, null)));
    debugPassword(chalk.green("rows : " + util.inspect(rows, false, null)));
    debugPassword(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    // calling a procedure returns a 2 element array with first element being the rows
    // and the second element being the meta data such as "fieldCount".  To get
    // the new_worker_id, get the first element of the data array which is an
    // object with the attribute name of 'new_worker_id'.
    data['errors'] = [];
    data['new_worker_id'] = rows[0][0].new_worker_id;
    var userInfo = null;

    if (err) {
      sendJsonSQLErrorResponse("Error creating new user " + first_name + " " + last_name,
                               "Danger",
                               err,
                               data,
                               res);
      return;
    } else {
      sendJsonResponse(res, 201, data);
    }
  });
};
