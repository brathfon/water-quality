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


// Note: returnData should be passed with two attributes already set as arrays,
// either empty or having additional errors in them, for example.

var sendJsonErrorResponse = function(title, level, sqlError, returnData, res) {

    var errorMsg = {};

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


// make sure that the time is on HH:MM.  If someone adds seconds, truncate them.

var formatSampleTime = function(theTime) {
  var newTime = theTime;
  if ((theTime !== null) && (theTime !== undefined)) {
    newTime = theTime.slice(0,5);
  }
  return newTime;
};


var formatSampleWithSigFigs = function(theSample, numSigFigs) {

  var newSample = null;

  //console.log("Formatting : " + theSample);

  if ((theSample !== null) && (theSample !== undefined)) {
    if (theSample === "") {
      newSample = null;
    }
    else {
      newSample = parseFloat(theSample).toFixed(numSigFigs);
    }
  }
  else {
    newSample = null;
  }
  return newSample;
};




module.exports.createNewSession = function (req, res) {

  //console.log(chalk.blue(util.inspect(req.body, false, null)));
  var lab_id         = req.body.lab_id;
  var session_number = req.body.session_number;
  var start_date     = req.body.start_date;
  //console.log("sessionNumber " + sessionNumber);

  db.connection.query("call create_session(" + lab_id + ", " + session_number + ", '" + start_date + "')", function(err, rows, fields) {

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
                            "Danger",
                            rows[0][0],  // this is the array of errors
                            data,
                            res);
    }
    else if (err) {  
      sendJsonErrorResponse("Error creating new session",
                            "Danger",
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

  db.connection.query("select * from lab_sessions_overview", function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

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


module.exports.getMaxSessionNumbersForLabs = function (req, res) {

  db.connection.query("select * from max_session_numbers_for_labs", function(err, rows, fields) {

    var data = {};
    data['maxSessionNumbers'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving data from database for max session numbers for labs",
                            "Danger",
                            err,
                            data,
                            res);
    } else {
      data['maxSessionNumbers'] =  rows;
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


module.exports.getSamplesForSessionOnDate = function (req, res) {

  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var theDate       = req.params.theDate;
  //console.log("sessionNumber " + sessionNumber);
  db.connection.query("call samples_for_session_on_date(" + labId + ", " + sessionNumber + ",'" + theDate + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error retrieving samples for session and date",
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


module.exports.updateOneSample = function (req, res) {

  console.log(chalk.blue("in api updateOneSample: " + util.inspect(req.body, false, null)));

  var query = "update samples set " + 
     "date_and_time = '" + req.body.theDate + " " + formatSampleTime(req.body.time) + "', " +
    // "moon = " + 
    "temperature = "          + formatSampleWithSigFigs(req.body.temperature, 1) + ", "  +
    "salinity = "             + formatSampleWithSigFigs(req.body.salinity, 1) + ", " +
    "dissolved_oxygen = "     + formatSampleWithSigFigs(req.body.dissolved_oxygen, 2) + ", " +
    "dissolved_oxygen_pct = " + formatSampleWithSigFigs(req.body.dissolved_oxygen_pct, 1) + ", " +
    "ph = "                   + formatSampleWithSigFigs(req.body.ph, 2)     + ", " +
    "turbidity_1 = "          + formatSampleWithSigFigs(req.body.turbidity_1, 2) + ", " +
    "turbidity_2 = "          + formatSampleWithSigFigs(req.body.turbidity_2, 2) + ", " +
    "turbidity_3 = "          + formatSampleWithSigFigs(req.body.turbidity_3, 2) + " " +
    "where sample_id = " + req.body.sample_id;

    console.log(chalk.blue("query : " + util.inspect(query, false, null)));

  db.connection.query(query, function(err, rows, fields) {

    //console.log(chalk.blue("err : " + util.inspect(err, false, null)));
    //console.log(chalk.blue("rows : " + util.inspect(rows, false, null)));
    //console.log(chalk.blue("rows affected : " + util.inspect(rows.affectedRows, false, null)));

    var data = {};
    data['updateResults'] = [];
    data['errors'] = [];

    if (err) {
      sendJsonErrorResponse("Error updating sample with id of " + req.body.sampleId,
                            "Danger",
                            err,
                            data,
                            res);
    }
    else if ((rows !== null) && (rows !== undefined) && (rows.affectedRows !== 1)) {
      sendJsonErrorResponse("Expecting 1 row affected in database.  " + rows.affectedRows + " reported",
                            "Danger",
                            err,
                            data,
                            res);
    }
    else {
      sendJsonResponse(res, 201, data);
    }

  });
};
