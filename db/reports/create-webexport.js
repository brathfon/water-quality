#!/usr/bin/env node

"use strict";

var mysql = require('mysql');
var util  = require('util');
var i = 0;
var data = {};
var sessions = null;
var labId = null;
var pathPieces;
var scriptname;

pathPieces = process.argv[1].split("/");
scriptname = pathPieces[pathPieces.length - 1];

if( ! process.argv[2] ) {
  console.error("usage: " + scriptname + "  < 1 | 2 > where 1 is West Maui and 2 is South Maui");
  process.exit(1);
} else {
  labId = process.argv[2];
}


var connection = mysql.createConnection({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password: process.env.DB_USER_PASSWORD,
    database: process.env.DB_DATABASE
});

connection.connect(function(err) {
  if (!err) {
    //console.log("-- Database is connected");
  }
  else {
    console.log("Error connecting to database");
  }
});


var getSampleReportData = function (data, endConnection, callback) {

  connection.query("call sample_report_for_lab(?)", labId, function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }

    if (err) {
      console.error("had a problem with calling sample_report_for_lab: " + err);
      connection.end();
      process.exit(1);
    }
    else {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log('The rows are: ' + util.inspect(rows[0], false, null));
      // calling a procedure returns a 2 element array with first element being the rows
      // and the second element being the meta data such as "fieldCount.
      data['samples'] = rows[0];

      if (callback) {
        callback(data, endConnection, callback);
      }
    }
  });
};




var getQaIssuesSamples = function (data, endConnection, callback) {

  connection.query("select sample_id, sample_column_name, report_attribute_name, description from qa_issue_samples", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['qaIssues'] = turnQaIssuesToLookup(rows);
      //for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        //data['qaIssues'][rows[i].sample_id] = rows[i];
      //}
      if (callback) {
        callback(data, endConnection, callback);
      }
      //for (initial in initialsToWorkerId) {
        //console.log("initials " + initial + " worker_id " + initialsToWorkerId[initial]);
      //}
    }
    else {
      console.error('Error while performing query');
      connection.end();
      process.exit(1);
    }
  });
};

/*
Converts array of objects into objects of objects of objects for checking for attributes being present

{sample_id: {sample_column_name: {report_attribute_name: 'ph', description: 'QA\ed out'}},
            {sample_column_name: {report_attribute_name: 'ammoniua', description: 'below detectable limit'}},
 sample_id: etc...

example:

{238: {ph:       {report_attribute_name: 'ph', description: 'QA\ed out'}},
      {ammonia: {report_attribute_name: 'NH4', description: 'below detectable limit'}},
{239: .......
*/

var turnQaIssuesToLookup = function(qaIssues) {

  var i;
  var lookup = {};
  var issue;
  var sample_id;
  var obj = null;

  //console.log("qaIssues: " + util.inspect(qaIssues, false, null));
  for (i = 0; i < qaIssues.length; ++i) {
    issue = qaIssues[i];
    sample_id = issue.sample_id;
    if (! lookup[sample_id]) {  // first time seeing this sample id
      lookup[sample_id] = {};
    }
    obj = {};
    obj['report_attribute_name'] = issue.report_attribute_name;
    obj['description']           = issue.description;
    lookup[sample_id][issue.sample_column_name] = obj;   // make an object for data for this sample_id/column-name
  }
  //console.log("lookup: " + util.inspect(lookup, false, null));
  return lookup;
}



var descriptionObjToString = function (obj) {

  var keys = Object.keys(obj);
  var i;
  var str = "";

  for (i = 0; i < keys.length; ++i) {
     str += keys[i];
   if (i !== (keys.length - 1)) {
     str +=  ", ";
   }
  }
  return str;
}

var checkForQAIssues = function(sample, column, qaIssues, issueDescriptions) {

  var returnValue = sample[column];
  var columnsWithQaIssues;
  var msg;
  var c;
  var issues = {};

  //console.log("checking sample: " + util.inspect(sample, false, null));
  //console.log("qaIssues: " + util.inspect(qaIssues, false, null));

  if (qaIssues[sample.sample_id]) {  // found a match for this sample_id
    columnsWithQaIssues = qaIssues[sample.sample_id];

    // add the descriptions to the object for returning them
    for (c in columnsWithQaIssues) {
      msg = columnsWithQaIssues[c].report_attribute_name + " " + columnsWithQaIssues[c].description;
      // add this to the descriptions of qa issues
      issueDescriptions[msg] = true;  // this will eliminate dups as in the case of turbidity
    }
    // handle special case of turbidity where there are 3 columns that will be QA together, we hope
    if ((column === 'avg_turbidity') && 
        (
          (columnsWithQaIssues.turbidity_1 !== undefined) ||
          (columnsWithQaIssues.turbidity_2 !== undefined) ||
          (columnsWithQaIssues.turbidity_3 !== undefined)
        )
       ) {
      returnValue = "#N/A";
    }
    else if (columnsWithQaIssues[column]) {  // more general cases
      //console.log("sample " + sample.sample_id + " column " + column + " has a QA issue");

      if (returnValue === null || returnValue === "null") {
         returnValue = "#N/A";
      } 
    }
  }
  //console.log("inside descriptions: " + util.inspect(issueDescriptions, false, null));
  return returnValue;
};

var createReport = function (data, callback) {

  var sample;
  var i;
  var row;
  var header;
  var issueDescriptions = {};

  //console.log("data " + util.inspect(data , false, null));

  header = "\t";
  header += "SampleID" + "\t";
  header += "SiteName" + "\t";
  header += "Station" + "\t";
  header += "Session" + "\t";
  header += "Date" + "\t";
  header += "Time" + "\t";
  header += "Temp" + "\t";
  header += "Salinity" + "\t";
  header += "DO" + "\t";
  header += "DO_sat" + "\t";
  header += "pH" + "\t";
  header += "Turbidity" + "\t";
  header += "TotalN" + "\t";
  header += "TotalP" + "\t";
  header += "Phosphate" + "\t";
  header += "Silicate" + "\t";
  header += "NNN" + "\t";
  header += "NH4" + "\t";
  header += "Lat" + "\t";
  header += "Long" + "\t";
  header += "QA issues or comments";
  console.log(header);


  for (i = 0;  i < data.samples.length; ++i) {
    issueDescriptions = {};
    row = (i + 1) + "\t";
    row += data.samples[i].sampleID + "\t";
    row += data.samples[i].long_name + "\t";
    row += data.samples[i].hui_abv + "\t";
    row += data.samples[i].session_number + "\t";
    row += data.samples[i].the_date + "\t";
    row += data.samples[i].the_time + "\t";
    row += checkForQAIssues(data.samples[i], "temperature",          data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "salinity",             data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "dissolved_oxygen",     data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "dissolved_oxygen_pct", data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "ph",                   data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "avg_turbidity",        data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "total_nitrogen",       data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "total_phosphorus",     data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "phosphate",            data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "silicate",             data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "nitrates",             data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "ammonia",              data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "lat",                  data.qaIssues, issueDescriptions) + "\t";
    row += checkForQAIssues(data.samples[i], "lon",                  data.qaIssues, issueDescriptions) + "\t";
    row += descriptionObjToString(issueDescriptions);
    console.log(row);

  }

  if (callback) {
    callback();
  }
}


getSampleReportData(data, false, function () {
  getQaIssuesSamples(data, true, function () {
    createReport(data, null);
  });
});
