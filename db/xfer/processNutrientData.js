#!/usr/bin/env node


var mysql = require('mysql');
var util  = require('util');
var i = 0;
var data = {};
var sessions = null;


var rsf  = require('./readSoestFiles');


var connection = mysql.createConnection({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password: process.env.DB_USER_PASSWORD,
    database: process.env.DB_DATABASE
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


var checkForQA = function(qaInsertList, value, sampleId, columnName, reportName) {

   var returnValue = value;
   var cmd = null;

   if (value.match(/^</)) {
     returnValue = value.substr(1);  // remove the < off the front
     cmd = "insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) ";
     cmd += "values (" + sampleId + ", \"" + columnName + "\", \"" + reportName + "\", \"below detectable limit\");";
     qaInsertList.push(cmd);
  }
  return returnValue;
}




var createSqlStatements = function (data, callback) {

  var sample;
  var cmd;
  var qaNitrates;
  var qaAmmonia;
  var qaInserts = [];   // this is to hold all the insert statements into the qa_samples table

  //console.log("data " + util.inspect(data , false, null));

  for (siteAndDate in data.nutrientSamples) {

    nutrients = data.nutrientSamples[siteAndDate];
    
    if (data.siteAndDateToSampleId[nutrients.SampleID]) { // found the sample_id for this site and date

      // these are currently the only values that sometimes have "<1.5" as their value
      qaNitrates = checkForQA(qaInserts, nutrients.NNN, data.siteAndDateToSampleId[nutrients.SampleID], "nitrates", "NNN");
      qaAmmonia  = checkForQA(qaInserts, nutrients.NH4, data.siteAndDateToSampleId[nutrients.SampleID], "ammonia", "NH4");


      cmd = "";
      cmd += "UPDATE samples SET ";
      cmd += "total_nitrogen = " + nutrients.TotalN + ", ";
      cmd += "total_phosphorus = " + nutrients.TotalP + ", ";
      cmd += "phosphate = " + nutrients.Phosphate + ", ";
      cmd += "silicate = " + nutrients.Silicate + ", ";
      cmd += "nitrates = " + qaNitrates + ", ";
      cmd += "ammonia = "  + qaAmmonia + " ";
      cmd += "where sample_id = " + data.siteAndDateToSampleId[nutrients.SampleID] + ";";
      console.log(cmd);
    }
    else {
      console.error("-- WARNING: did not find sample id for  " + nutrients.SampleID + " site: " + nutrients.Location + " date " + nutrients.Date);
    }
  }

  for (k = 0; k < qaInserts.length; ++k) {
    console.log(qaInserts[k]);
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
