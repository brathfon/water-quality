var db = require('../models/db');
var env = require('get-env');
var chalk = require('chalk');
var util = require('util');
var helpers = require('./helpers');

module.exports.getSitesOverview = function (req, res) {

  db.pool.query("call get_sites_overview()", function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['sites'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for lab sessions overview",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['sites'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};

module.exports.getSiteDetails = function (req, res) {

  const site_id = req.params.site_id;

  const args = [site_id];

  db.pool.query("call get_site_details(?)", args, function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['siteDetails'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for lab sessions overview",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['siteDetails'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};
