var db = require('../models/db');
var env = require('get-env');
var chalk = require('chalk');
var util = require('util');
var helpers = require('./helpers');

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


// Note: returnData should be passed with two attributes already set as arrays,
// either empty or having additional errors in them, for example.

var sendJsonErrorResponse = function(title, level, sqlError, returnData, res) {

    var errorMsg = {};

    // send this to the console, for sure, if dev or prod
    console.log(chalk.red(title + ": " + util.inspect(sqlError, false, null)));
    // set up error to be returned for possible display
    errorMsg['title'] = title;
    errorMsg['level'] = "danger";
    errorMsg['text']  = [];
    if (env() === 'dev') {   // show the full error
      errorMsg['text'] = errorObjToArray(sqlError);
    }
    else {
      errorMsg['text'].push("Please report this error to " + process.env.WEB_MASTER_EMAIL);
    }
    returnData['errors'].push(errorMsg);
    sendJsonResponse(res, 500, returnData);
}



module.exports.createNewSession = function (req, res) {

  //console.log(chalk.blue(util.inspect(req.body, false, null)));


  var lab_id           = req.body.lab_id;
  var session_number   = req.body.session_number;
  var first_sample_day = req.body.first_sample_day;
  //console.log("sessionNumber " + sessionNumber);

  db.pool.query("call create_session(" + lab_id + ", " + session_number + ", '" + first_sample_day + "')", function(err, rows, fields) {

  //console.log(chalk.blue("err : " + util.inspect(err, false, null)));
  //console.log(chalk.blue("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.blue("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['create_results'] = [];
    data['errors'] = [];

    // create session normally does not return any data, but if it catches an exception and rolls back
    // the transaction, the error comes back as a data row.
    // rows : [ [ RowDataPacket {
    //       Level: 'Error',
    //       Code: 1062,
    //       Message: 'Duplicate entry \'1-501\' for key \'natural\'' } ],
    //   OkPacket {
    //     fieldCount: 0,
    if ((err === null) && (rows !== null) && (rows !== undefined) && (rows.length > 1 )) {
      sendJsonErrorResponse("Error creating new session",
                            "danger",
                            rows[0][0],  // this is the array of errors
                            data,
                            res);
    }
    else if (err) {
      sendJsonErrorResponse("Error creating new session",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount".
      data['create_results'] = rows[0];  // this will be empty when successful
      sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getLabSessionsOverview = function (req, res) {

  db.pool.query("call get_lab_sessions_overview()", function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['labSessions'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving data from database for lab sessions overview",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['labSessions'] =  rows[0];
      sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getMaxSessionNumbersForLabs = function (req, res) {

  db.pool.query("call get_max_session_numbers_for_labs()", function(err, rows, fields) {

    var data = {};
    data['maxSessionNumbers'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving data from database for max session numbers for labs",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['maxSessionNumbers'] =  rows[0];
      sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getSamplesForSession = function (req, res) {

  var labId = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  //console.log("sessionNumber " + sessionNumber);
  db.pool.query("call samples_for_session(" + labId + ", " + sessionNumber + ")", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving samples for session",
                            "danger",
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


module.exports.getSamplesForSessionOnDate = function (req, res) {

  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var theDate       = req.params.theDate;
  //console.log("sessionNumber " + sessionNumber);
  db.pool.query("call get_samples_for_session_on_date(" + labId + ", " + sessionNumber + ",'" + theDate + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving samples for session and date",
                            "danger",
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

module.exports.getInSituSamplesForSessionOnDate = function (req, res) {

  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var theDate       = req.params.theDate;
  //console.log("sessionNumber " + sessionNumber);
  db.pool.query("call get_in_situ_samples_for_session_on_date(" + labId + ", " + sessionNumber + ",'" + theDate + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving samples for session and date",
                            "danger",
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


module.exports.getNutrientSamplesForSessionOnDate = function (req, res) {

  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var theDate       = req.params.theDate;
  //console.log("sessionNumber " + sessionNumber);
  db.pool.query("call get_nutrient_samples_for_session_on_date(" + labId + ", " + sessionNumber + ",'" + theDate + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving samples for session and date",
                            "danger",
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
  db.pool.query("call workers_for_session(" + labId + ", " + sessionNumber + ")", function(err, rows, fields) {

    var data = {};
    data['workers'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving workers for session",
                            "danger",
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


module.exports.updateOneSample = function (req, res) {

  console.log(chalk.blue("in api updateOneSample: " + util.inspect(req.body, false, null)));

  var query = null;
  var date_and_time = req.body.the_date + " " + req.body.time;
  var inputData = [date_and_time,
                   req.body.temperature,
                   req.body.salinity,
                   req.body.dissolved_oxygen,
                   req.body.dissolved_oxygen_pct,
                   req.body.ph,
                   req.body.turbidity_1,
                   req.body.turbidity_2,
                   req.body.turbidity_3,
                   req.body.sample_id];

  var query = "update samples set " +
     "date_and_time = ?, " +
    "temperature = ?, " +
    "salinity = ?, " +
    "dissolved_oxygen = ?, " +
    "dissolved_oxygen_pct = ?, " +
    "ph = ?, " +
    "turbidity_1 = ?, " +
    "turbidity_2 = ?, " +
    "turbidity_3 = ? " +
    "where sample_id = ?";
    console.log(chalk.blue("inputData : " + util.inspect(inputData, false, null)));
    console.log(chalk.blue("query : " + util.inspect(query, false, null)));

  db.pool.query(query, inputData, function(err, rows, fields) {

    //console.log(chalk.blue("err : " + util.inspect(err, false, null)));
    //console.log(chalk.blue("rows : " + util.inspect(rows, false, null)));
    //console.log(chalk.blue("rows affected : " + util.inspect(rows.affectedRows, false, null)));

    var data = {};
    data['updateResults'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error updating sample with id of " + req.body.sampleId,
                            "danger",
                            err,
                            data,
                            res);
    }
    else if ((rows !== null) && (rows !== undefined) && (rows.affectedRows !== 1)) {
      helpers.sendJsonSQLErrorResponse("Expecting 1 row affected in database.  " + rows.affectedRows + " reported",
                            "danger",
                            err,
                            data,
                            res);
    }
    else {
      helpers.sendJsonResponse(res, 201, data);
    }

  });
};

module.exports.isSessionNumberInUseForLab = function (req, res) {

  if (!req.params.lab_id ) { sendJsonResponse(res, 400, {"message": "isSessionNumberInUseForLab(): lab_id param not passed"}); return;};
  if (!req.params.session_number ) { sendJsonResponse(res, 400, {"message": "isSessionNumberInUseForLab(): session_number param not passed"}); return;};


  var lab_id = req.params.lab_id;
  var session_number = req.params.session_number;
  //console.log("sessionNumber " + sessionNumber);
  db.pool.query("call is_session_number_in_use_for_lab(?, ?)", [lab_id, session_number], function(err, rows, fields) {

    var data = {};

    data['isSessionNumberInUseForLab'] = null;
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error calling is_session_number_in_use_for_lab()",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      //data['workers'] = rows[0];
      if (rows[0].length === 1) {
        data["isSessionNumberInUseForLab"] = true;
        sendJsonResponse(res, 201, data);
      }
      else if (rows[0].length === 0) {
        data["isSessionNumberInUseForLab"] = false;
        sendJsonResponse(res, 201, data);
      }
      else {
        helpers.sendJsonSQLErrorResponse("Expecting 0 or 1 row return. " + rows.length + " returned.",
                              "danger",
                              err,
                              data,
                              res);
      }

    }
  });
};

module.exports.isFirstSampleDayInUseForLab = function (req, res) {

  if (!req.params.lab_id ) { sendJsonResponse(res, 400, {"message": "isFirstSampleDayInUseForLab(): lab_id param not passed"}); return;};
  if (!req.params.first_sample_day ) { sendJsonResponse(res, 400, {"message": "isFirstSampleDayInUseForLab(): first_sample_day param not passed"}); return;};


  var lab_id = req.params.lab_id;
  var first_sample_day = req.params.first_sample_day;
  //console.log("sessionNumber " + sessionNumber);
  db.pool.query("call is_first_sample_day_in_use_for_lab(?, ?)", [lab_id, first_sample_day], function(err, rows, fields) {

    var data = {};

    data['isFirstSampleDayInUseForLab'] = null;
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error calling is_first_sample_day_in_use_for_lab()",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      //data['workers'] = rows[0];
      if (rows[0].length === 1) {
        data["isFirstSampleDayInUseForLab"] = true;
        sendJsonResponse(res, 201, data);
      }
      else if (rows[0].length === 0) {
        data["isFirstSampleDayInUseForLab"] = false;
        sendJsonResponse(res, 201, data);
      }
      else {
        helpers.sendJsonSQLErrorResponse("Expecting 0 or 1 row return. " + rows.length + " returned.",
                              "danger",
                              err,
                              data,
                              res);
      }

    }
  });
};
