var db = require('../models/db');
var env = require('get-env');
var chalk = require('chalk');
var util = require('util');
var helpers = require('./helpers');


module.exports.createNewSession = function (req, res) {

  //console.log(chalk.blue(util.inspect(req.body, false, null)));


  var lab_id           = req.body.lab_id;
  var session_number   = req.body.session_number;
  var first_sample_day = req.body.first_sample_day;
  //console.log("session_number " + session_number);

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
      helpers.sendJsonSQLErrorResponse("Error creating new session",
                            "danger",
                            rows[0][0],  // this is the array of errors
                            data,
                            res);
    }
    else if (err) {
      helpers.sendJsonSQLErrorResponse("Error creating new session",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount".
      data['create_results'] = rows[0];  // this will be empty when successful
      helpers.sendJsonResponse(res, 201, data);
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
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for lab sessions overview",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['labSessions'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getMaxSessionNumbersForLabs = function (req, res) {

  db.pool.query("call get_max_session_numbers_for_labs()", function(err, rows, fields) {

    var data = {};
    data['maxSessionNumbers'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for max session numbers for labs",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['maxSessionNumbers'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getSamplesForSession = function (req, res) {

  var lab_id = req.params.lab_id;
  var session_number = req.params.session_number;
  //console.log("session_number " + session_number);
  db.pool.query("call get_samples_for_session(" + lab_id + ", " + session_number + ")", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving samples for session",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['samples'] = rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getSamplesForSessionOnDate = function (req, res) {

  var lab_id         = req.params.lab_id;
  var session_number = req.params.session_number;
  var the_date       = req.params.the_date;
  //console.log("session_number " + session_number);
  db.pool.query("call get_samples_for_session_on_date(" + lab_id + ", " + session_number + ",'" + the_date + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving samples for session and date",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['samples'] = rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};

module.exports.getInSituSamplesForSessionOnDate = function (req, res) {

  var lab_id         = req.params.lab_id;
  var session_number = req.params.session_number;
  var the_date       = req.params.the_date;
  //console.log("session_number " + session_number);
  db.pool.query("call get_in_situ_samples_for_session_on_date(" + lab_id + ", " + session_number + ",'" + the_date + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving samples for session and date",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['samples'] = rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getNutrientSamplesForSessionOnDate = function (req, res) {

  var lab_id         = req.params.lab_id;
  var session_number = req.params.session_number;
  var the_date       = req.params.the_date;
  //console.log("session_number " + session_number);
  db.pool.query("call get_nutrient_samples_for_session_on_date(" + lab_id + ", " + session_number + ",'" + the_date + "')", function(err, rows, fields) {

    var data = {};
    data['samples'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving samples for session and date",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['samples'] = rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};


var checkForNull = function (value){
  return (value === '' ? null : value);
};

var checkReqBody = function (req, res, attr) {

  var returnValue = true;
  if (req.body[attr] === undefined) {
    helpers.sendJsonResponse(res, 400, {"message": "updatePuzzlePiece(): " + attr + " param not passed"});
    returnValue = false;
  }
  return returnValue;
}


module.exports.updateOneSample = function (req, res) {

  //console.log(chalk.blue("in api updateOneSample: " + util.inspect(req.body, false, null)));
  if (! checkReqBody(req, res, 'sample_id')) { return; };
  if (! checkReqBody(req, res, 'the_date')) { return; };
  if (! checkReqBody(req, res, 'the_time')) { return; };
  if (! checkReqBody(req, res, 'temperature')) { return; };
  if (! checkReqBody(req, res, 'salinity')) { return; };
  if (! checkReqBody(req, res, 'dissolved_oxygen')) { return; };
  if (! checkReqBody(req, res, 'dissolved_oxygen_pct')) { return; };
  if (! checkReqBody(req, res, 'ph')) { return; };
  if (! checkReqBody(req, res, 'turbidity_1')) { return; };
  if (! checkReqBody(req, res, 'turbidity_2')) { return; };
  if (! checkReqBody(req, res, 'turbidity_3')) { return; };
  if (! checkReqBody(req, res, 'comments')) { return; };

  var inputData = [req.body.sample_id,
                   req.body.the_date,
                   checkForNull(req.body.the_time),
                   checkForNull(req.body.temperature),
                   checkForNull(req.body.salinity),
                   checkForNull(req.body.dissolved_oxygen),
                   checkForNull(req.body.dissolved_oxygen_pct),
                   checkForNull(req.body.ph),
                   checkForNull(req.body.turbidity_1),
                   checkForNull(req.body.turbidity_2),
                   checkForNull(req.body.turbidity_3),
                   checkForNull(req.body.comments)];

    const query = "call update_sample(?,?,?,?,?,?,?,?,?,?,?,?)";
    //console.log(chalk.blue("inputData : " + util.inspect(inputData, false, null)));
    //console.log(chalk.blue("query : " + util.inspect(query, false, null)));

    db.pool.query(query, inputData, function(err, rows, fields) {

    //console.log(chalk.blue("err : " + util.inspect(err, false, null)));
    //console.log(chalk.blue("rows : " + util.inspect(rows, false, null)));
    //console.log(chalk.blue("fields : " + util.inspect(fields, false, null)));

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

  if (!req.params.lab_id ) { helpers.sendJsonResponse(res, 400, {"message": "isSessionNumberInUseForLab(): lab_id param not passed"}); return;};
  if (!req.params.session_number ) { helpers.sendJsonResponse(res, 400, {"message": "isSessionNumberInUseForLab(): session_number param not passed"}); return;};


  var lab_id = req.params.lab_id;
  var session_number = req.params.session_number;
  //console.log("session_number " + session_number);
  db.pool.query("call is_session_number_in_use_for_lab(?, ?)", [lab_id, session_number], function(err, rows, fields) {

    var data = {};

    data['isSessionNumberInUseForLab'] = null;
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error calling is_session_number_in_use_for_lab()",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      if (rows[0].length === 1) {
        data["isSessionNumberInUseForLab"] = true;
        helpers.sendJsonResponse(res, 201, data);
      }
      else if (rows[0].length === 0) {
        data["isSessionNumberInUseForLab"] = false;
        helpers.sendJsonResponse(res, 201, data);
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

  if (!req.params.lab_id ) { helpers.sendJsonResponse(res, 400, {"message": "isFirstSampleDayInUseForLab(): lab_id param not passed"}); return;};
  if (!req.params.first_sample_day ) { helpers.sendJsonResponse(res, 400, {"message": "isFirstSampleDayInUseForLab(): first_sample_day param not passed"}); return;};


  var lab_id = req.params.lab_id;
  var first_sample_day = req.params.first_sample_day;
  //console.log("session_number " + session_number);
  db.pool.query("call is_first_sample_day_in_use_for_lab(?, ?)", [lab_id, first_sample_day], function(err, rows, fields) {

    var data = {};

    data['isFirstSampleDayInUseForLab'] = null;
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error calling is_first_sample_day_in_use_for_lab()",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      //data['samples'] = rows[0];
      if (rows[0].length === 1) {
        data["isFirstSampleDayInUseForLab"] = true;
        helpers.sendJsonResponse(res, 201, data);
      }
      else if (rows[0].length === 0) {
        data["isFirstSampleDayInUseForLab"] = false;
        helpers.sendJsonResponse(res, 201, data);
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
