var db = require('../models/db');
var env = require('get-env');
var chalk = require('chalk');
var util = require('util');





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

var sendJsonErrorResponse = function(title, level, sqlError, returnData, res) {

    var errorMsg = {};
    returnData['errors'] = [];

    // send this to the console, for sure, if dev or prod
    console.log(chalk.red(title + ": " + util.inspect(sqlError, false, null)));
    // set up error to be returned for possible display
    errorMsg['title'] = title;
    errorMsg['level'] = "Danger";
    errorMsg['text']  = [];
    if (env() === 'dev') {   // show the full error
      errorMsg['text'] = errorObjToArray(sqlError);
    }
    else {
      errorMsg['text'].push("Please report this error to " + process.env.WEB_MASTER_EMAIL);
    }
    returnData['errors'].push(errorMsg);
    sendJsonResponse(res, 400, returnData);
}


module.exports.getLabSessionsOverview = function (req, res) {

  db.connection.query("select * from lab_sessions_overview", function(err, rows, fields) {

    var data = {};
    data['labSessions'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving data from database for lab sessions overview",
                            "Danger",
                            err,
                            data,
                            res);
    } else {
      data['labSessions'] =  rows;
      sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getSamplesForSession = function (req, res) {

  var labId = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  //console.log("sessionNumber " + sessionNumber);
  db.connection.query("call samples_for_session(" + labId + ", " + sessionNumber + ")", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving samples for session",
                            "Danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['samples'] = rows[0];
      sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getWorkersForSession = function (req, res) {

  var labId = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  //console.log("sessionNumber " + sessionNumber);
  db.connection.query("call workers_for_session(" + labId + ", " + sessionNumber + ")", function(err, rows, fields) {

    var data = {};
    data['workers'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving workers for session",
                            "Danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['workers'] = rows[0];
      sendJsonResponse(res, 201, data);
    }
  });
};
