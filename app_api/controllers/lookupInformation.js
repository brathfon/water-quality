var db = require('../models/db');
var env = require('get-env');
var chalk = require('chalk');
var util = require('util');
var helpers = require('./helpers');



module.exports.getLabs = function (req, res) {

  db.pool.query("call get_labs()", function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['labs'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for labs",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['labs'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};


module.exports.getMeasurementPrecision = function (req, res) {

  db.pool.query("call get_measurement_precision()", function(err, rows, fields) {

    var data = {};
    data['measurement_precision'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for labs",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['measurement_precision'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};
