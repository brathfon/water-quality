#!/usr/bin/env node


var mysql = require('mysql');
var util  = require('util');
var i = 0;
var data = {};
var sessions = null;


var rsf  = require('./readSoestFiles');


var connection = mysql.createConnection({
    host : 'localhost',
    user : 'wq_dba',
    password: 'ntus',
    database: 'water_quality'
});


connection.connect(function(err) {
  if (!err) {
    console.log("-- Database is connected");
  }
  else {
    console.log("Error connecting to database");
  }
});


// just pass endConnection on, if necessary
var readSoestFiles = function (data, endConnection, callback) {

  var westMaui = rsf.readSoestFiles(process.env.WQ_FILES + '/soest/csv-files/west-maui', data.knownSites);
  var southMaui = rsf.readSoestFiles(process.env.WQ_FILES + '/soest/csv-files/south-maui', data.knownSites);

  console.log("-- Number of west Maui nutrient samples : " + Object.keys(westMaui).length);
  console.log("-- Number of south Maui nutrient samples : " + Object.keys(southMaui).length);

  var combined = Object.assign({}, westMaui, southMaui);

  console.log("-- Combined : " + Object.keys(combined).length);

  data['nutrientSamples'] = combined;
 
  if (endConnection) {
    connection.end();
  }

  if (callback) {
    callback(data, endConnection, callback);
  }
};


var getSiteAndDateToSampleId = function (data, endConnection, callback) {

  connection.query("select site_and_date, sample_id, hui_abv, day from site_and_date_to_sample_id_lookup", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['siteAndDateToSampleId'] = {};
      for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        data['siteAndDateToSampleId'][rows[i].site_and_date] = rows[i].sample_id;
      }
      if (callback) {
        callback(data, endConnection, callback);
      }
      //for (initial in initialsToWorkerId) {
        //console.log("initials " + initial + " worker_id " + initialsToWorkerId[initial]);
      //}
    }
    else {
      console.log("Error while performing query: " + err);
      connection.end();
    }
  });

};



var getKnownSites = function (data, endConnection, callback) {

  connection.query("select hui_abv, long_name from known_sites", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['knownSites'] = {};
      for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        data['knownSites'][rows[i].hui_abv] = rows[i].long_name;
      }
      if (callback) {
        callback(data, endConnection, callback);
      }
      //for (initial in initialsToWorkerId) {
        //console.log("initials " + initial + " worker_id " + initialsToWorkerId[initial]);
      //}
    }
    else {
      console.log('Error while performing query');
      connection.end();
    }
  });
};



var createSqlStatements = function (data, callback) {

  var sample;
  var cmd;
  //console.log("data " + util.inspect(data , false, null));

  console.log(""); 
  console.log("use water_quality;"); 
  console.log(""); 

  for (siteAndDate in data.nutrientSamples) {

    nutrients = data.nutrientSamples[siteAndDate];
    
    if (data.siteAndDateToSampleId[nutrients.SampleID]) { // found the sample_id for this site and date
      cmd = "";
      cmd += "UPDATE samples SET ";
      cmd += "total_nitrogen = " + nutrients.TotalN + ", ";
      cmd += "total_phosphorus = " + nutrients.TotalP + ", ";
      cmd += "phosphate = " + nutrients.Phosphate + ", ";
      cmd += "silicate = " + nutrients.Silicate + ", ";
      cmd += "nitrates = " + nutrients.NNN + ", ";
      cmd += "ammonia = " + nutrients.NH4 + " ";
      cmd += "where sample_id = " + data.siteAndDateToSampleId[nutrients.SampleID] + ";";
      console.log(cmd);
    }
    else {
      console.log("-- WARNING: did not find sample id for  " + nutrients.SampleID + " site: " + nutrients.Location + " date " + nutrients.Date);
    }
    
  }

  if (callback) {
    callback();
  }
}


getSiteAndDateToSampleId(data, false, function () {
  getKnownSites(data, false, function () {
    readSoestFiles(data, true, function () {
      createSqlStatements(data, null);
    });
  });
});
