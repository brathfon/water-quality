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


var checkForNull = function (value){
  return (value === '' || value === 'null' ? null : value);
};

var checkReqBody = function (req, res, caller, attr) {

  var returnValue = true;
  if (req.body[attr] === undefined) {
    helpers.sendJsonResponse(res, 400, {"message": `${caller}(): ${attr} param not passed`});
    returnValue = false;
  }
  return returnValue;
}

// this method can be called to either update or insert a new site. The "mode" is either
// update or insert
module.exports.updateOrInsertSite = function (req, res) {

  //console.log(chalk.blue("in api updateOneSample: " + util.inspect(req.body, false, null)));

  let caller = "updateOrInsertSite";

  if (! checkReqBody(req, res, caller, 'mode')) { return; };
  if (req.body.mode === "update") {
    if (! checkReqBody(req, res, caller, 'site_id')) { return; };
  }

  let inputData = [];
  let query = "";

  if (req.body.mode === "update") {
    inputData.push(req.body.site_id);
    query = `call update_site(?,?,?,?,?,?,?,?,?,?,?)`;
  }
  else if (req.body.mode === "insert") {
    query = `call insert_site(?,?,?,?,?,?,?,?,?)`;

  }
  else {
    helpers.sendJsonResponse(res, 400, {"message": "updateOrInsertSite(): " + req.body.mode + " mode not recognized"});
    return;
  }

  if (! checkReqBody(req, res, caller, 'hui_abv')) { return; };
  if (! checkReqBody(req, res, caller, 'storet_code')) { return; };
  if (! checkReqBody(req, res, caller, 'long_name')) { return; };
  if (! checkReqBody(req, res, caller, 'lab_id')) { return; };
  if (! checkReqBody(req, res, caller, 'default_sample_day')) { return; };
  // the default sampling order is usually set via a difference API call
  // and not required when creating a new site.
  if (req.body.mode === "update") {
    if (! checkReqBody(req, res, caller, 'default_sampling_order')) { return; };
  }
  if (! checkReqBody(req, res, caller, 'lon')) { return; };
  if (! checkReqBody(req, res, caller, 'active')) { return; };
  if (! checkReqBody(req, res, caller, 'description')) { return; };

  // all of these should have values (not null or blank)  caller should make sure of this
  inputData.push(req.body.hui_abv);
  inputData.push(req.body.storet_code);
  inputData.push(req.body.long_name);
  inputData.push(req.body.lab_id);
  inputData.push(req.body.default_sample_day);
  // the default sampling order is usually set via a difference API call,
  // but if a site is set to inactive, the sampling order is meaningless
  // and should be set to null
  if (req.body.mode === "update") {
    inputData.push(checkForNull(req.body.default_sampling_order));
  }
  inputData.push(req.body.lat);
  inputData.push(req.body.lon);
  inputData.push(req.body.active);
  // description might be blank or null
  inputData.push(checkForNull(req.body.description));

  //console.log(chalk.blue("inputData : " + util.inspect(inputData, false, null)));
  //console.log(chalk.blue("query : " + util.inspect(query, false, null)));

  db.pool.query(query, inputData, function(err, rows, fields) {

    //console.log(chalk.blue("err : " + util.inspect(err, false, null)));
    //console.log(chalk.blue("rows : " + util.inspect(rows, false, null)));
    //console.log(chalk.blue("fields : " + util.inspect(fields, false, null)));

    //console.log(chalk.blue("rows affected : " + util.inspect(rows.affectedRows, false, null)));

    let data = {};
    data['updateOrInsertResults'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error updating or sample with hui_abv of " + req.body.hui_abv,
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

module.exports.deleteSite = function (req, res) {
  let caller = "deleteSite";

  if (! checkReqBody(req, res, caller, 'site_id')) { return; };

  let args = [req.body.site_id];

  db.pool.query("call delete_site(?)", args, function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['siteDeleted'] = false;
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for lab sessions overview",
                            "danger",
                            err,
                            data,
                            res);

    }
    else if ((rows !== null) && (rows !== undefined) && (rows.affectedRows !== 1)) {
      helpers.sendJsonSQLErrorResponse(`${caller}(): Expecting 1 row affected in database. ${rows.affectedRows} reported`,
                            "danger",
                            err,
                            data,
                            res);
    }
    else {
      data['siteDeleted'] =  true;
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};

module.exports.getDefaultSamplingOrder = function (req, res) {

  const default_sample_day = req.params.default_sample_day;
  const lab_id  = req.params.lab_id;

  const args = [lab_id, default_sample_day];

  db.pool.query("call get_default_sampling_order(?, ?)", args, function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['defaultSamplingOrder'] = [];
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for get_default_sampling_order()",
                            "danger",
                            err,
                            data,
                            res);
    } else {
      data['defaultSamplingOrder'] =  rows[0];
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};

module.exports.updateDefaultSamplingOrder = function (req, res) {
  let caller = "updateDefaultSamplingOrder";

  if (! checkReqBody(req, res, caller, 'site_id')) { return; };
  if (! checkReqBody(req, res, caller, 'default_sampling_order')) { return; };

  let args = [req.body.site_id, req.body.default_sampling_order];

  db.pool.query("call update_default_sampling_order(?, ?)", args, function(err, rows, fields) {

  //console.log(chalk.green("err : " + util.inspect(err, false, null)));
  //console.log(chalk.green("rows : " + util.inspect(rows, false, null)));
  //console.log(chalk.green("fields : " + util.inspect(fields, false, null)));

    var data = {};
    data['defaultSamplingOrderUpdated'] = false;
    data['errors'] = [];

    if (err) {
      helpers.sendJsonSQLErrorResponse("Error retrieving data from database for lab sessions overview",
                            "danger",
                            err,
                            data,
                            res);

    }
    else if ((rows !== null) && (rows !== undefined) && (rows.affectedRows !== 1)) {
      helpers.sendJsonSQLErrorResponse(`${caller}(): Expecting 1 row affected in database. ${rows.affectedRows} reported`,
                            "danger",
                            err,
                            data,
                            res);
    }
    else {
      data['defaultSamplingOrderUpdated'] = true;
      helpers.sendJsonResponse(res, 201, data);
    }
  });
};
