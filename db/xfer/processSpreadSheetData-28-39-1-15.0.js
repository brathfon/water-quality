#!/usr/bin/env node


"use strict";

var mysql = require('mysql');
var util  = require('util');
var rss  = require('./readSpreadSheets');


var theData = null;


/*
for (session in sessions) {
  console.log("session :  " + session);
  console.log("samples " + util.inspect(sessions[session], false, null));
}
*/

//console.log( util.inspect(sessions, false, null));

//process.exit(0);

var printSessionsAsComments = function(theSessions) {
  var j = 0;
  var sample = null;
  for (session in theSessions) {
    console.log("-- session '" + session + "'");
    for (j = 0; j < theSessions[session].length; ++ j) {
      sample = theSessions[session][j];
      console.log("-- ----------------------------------------------------------");
      for (attr in sample) {
        console.log("--   " + attr + ": '" + sample[attr] + "'");
      }
    }
  }
}

//printSessionsAsComments(sessions);

var connection = mysql.createConnection({
    host : process.env.DB_HOST,
    user : process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
});

connection.connect(function(err) {
  if (!err) {
    console.log("-- Database is connected");
  }
  else {
    console.error("Error connecting to database");
  }
});


var readSpreadSheetFiles = function (data, endConnection, callback) {

  data['sessions'] = rss.readTeamSheets(process.env.WQ_FILES + "/gdrive-downloads/data-sessions-28-39-1-15");

  if (endConnection) {
    connection.end();
  }

  if (callback) {
    callback(data, endConnection, callback);
  }
};



var getInitialsToWorkerId = function (data, endConnection, callback) {

  var i = null;

  connection.query("select first_name, last_name, initials, worker_id from workers", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['initialsToWorkerId'] = {};
      for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        data['initialsToWorkerId'][rows[i].initials] = rows[i].worker_id;
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



var getHuiCodeToSiteId = function (data, endConnection, callback) {

  var i = null;

  connection.query("select hui_abv, site_id from sites", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['huiAbvToSiteId'] = {};
      for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        data['huiAbvToSiteId'][rows[i].hui_abv] = rows[i].site_id;
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



var getLabCodeToLabId = function (data, endConnection, callback) {

  var i = null;

  connection.query("select lab_code, lab_id from labs", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['labCodeToLabId'] = {};
      for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        data['labCodeToLabId'][rows[i].lab_code] = rows[i].lab_id;
      }
      if (callback) {
        callback(data, endConnection, callback);
      }
    }
    else {
      console.error('Error while performing query: ' + err);
      connection.end();
    }
  });
};


var printLookupData = function (data, endConnection, callback) {
  if (endConnection) {
    connection.end();
  }

  var initial, hui_abv, lab_code;

  //console.log("data " + util.inspect(data , false, null));

 //console.log("data " + util.inspect(data , false, null));
  console.log("-- max session id "  + data.maxSessionId);
  console.log("");

  //console.log("data " + util.inspect(data , false, null));
  console.log("-- max sample id "  + data.maxSampleId);
  console.log("");


  for (initial in data.initialsToWorkerId) {
    console.log("-- initials " + initial + " worker_id " + data.initialsToWorkerId[initial]);
  }

  for (hui_abv in data.huiAbvToSiteId) {
    console.log("-- hui_abv " + hui_abv + " site_id " + data.huiAbvToSiteId[hui_abv]);
  }

  for (lab_code in data.labCodeToLabId) {
    console.log("-- lab_code " + lab_code + " lab_id " + data.labCodeToLabId[lab_code]);
  }

  if (callback) {
    callback();
  }
}


var getWorkerId = function(data, sampler_initials) {

  var worker_id = null;

  if (sampler_initials === '') {
    //console.log("blank sampler");
  }
  else {
    worker_id  = data.initialsToWorkerId[sampler_initials];
    if (! worker_id) { console.error("ERROR: worker_id lookup failed for '" + sampler_initials + "'"); process.exit(1) };
  }
  return worker_id;
}



// if there are sessions already in the database, return the max session_id.
// if the table is empty, return 0
var getMaxSessionId = function (data, endConnection, callback) {

  var i;

  connection.query("select max(session_id) as max_session_id from sessions", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log("rows length : " + rows.length);
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['maxSessionId'] = null;
      for (i in rows) {   // expecting one row
        //console.log(util.inspect(rows[i], false, null));
        //console.log("lab_id " + rows[i].lab_id);
        data['maxSessionId'] = rows[i].max_session_id;  // just one row, if no rows, null, and returns 1
      }
      if( data['maxSessionId'] === null) {
        data['maxSessionId'] = 0;
      }
      if (callback) {
        callback(data, endConnection, callback);
      }
    }
    else {
      console.log('Error while performing query to find lab id : ' + err);
      connection.end();
    }
  });
};


var getMaxSampleId = function (data, endConnection, callback) {

  var i;

  connection.query("select max(sample_id) as max_sample_id from samples", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log("rows length : " + rows.length);
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['maxSampleId'] = null;
      for (i in rows) {   // expecting one row
        //console.log(util.inspect(rows[i], false, null));
        //console.log("lab_id " + rows[i].lab_id);
        data['maxSampleId'] = rows[i].max_sample_id;  // just one row, if no rows, null, and returns 1
      }
      if( data['maxSampleId'] === null) {
        data['maxSampleId'] = 0;
      }
      if (callback) {
        callback(data, endConnection, callback);
      }
    }
    else {
      console.error('Error while performing query to find lab id : ' + err);
      connection.end();
    }
  });
};



var checkForQA = function(qaInsertList, value, sampleId, columnName, reportName) {

   var returnValue = value;
   var cmd = null;


   if (value === "") {
     returnValue = null;
     cmd = "insert into qa_issue_samples ( sample_id, sample_column_name, report_attribute_name, description) ";
     cmd += "values (" + sampleId + ", \"" + columnName + "\", \"" + reportName + "\", \"QA\'ed out\");";
     returnValue = null;
     qaInsertList.push(cmd);
  }
  return returnValue;
}


var createSqlStatements = function (data, callback) {

  //console.log("data " + util.inspect(data , false, null));
  var start_date  = null;
  var lab         = null;
  var lab_id      = null;
  var samples = null;  // list of site samples
  var sample  = null;
  var hui_abv      = null;
  var site_id       = null;
  var date_and_time = null;
  var moon          = null;
  var qa_code       = null;
  // insitu measurements
  var temperature          = null;
  var salinity             = null;
  var dissolved_oxygen     = null;
  var dissolved_oxygen_pct = null;
  var ph                   = null;
  var turbidity_1          = null;
  var turbidity_2          = null;
  var turbidity_3          = null;
  var comments_str         = null;
  var k;

  var cmd                = null;
  var qaInserts = [];   // this is to hold all the insert statements into the qa_samples table

  // DANGER: there is an assumption that these parallel auto-increment value in db
  var session_auto_increment  = data.maxSessionId;
  var sample_auto_increment   = data.maxSampleId;

  var workerIdsToAdd = null;
  var workerId    = null;
  var workerIndex = null;
  var session_number = null;

  for (session_number in data.sessions) {
    ++session_auto_increment;  // DANGER: there is an assumption that this parallels auto-increment value in db
    console.log("-- session :  " + session_number + " session_id auto_increment : " + session_auto_increment);
    //console.log("samples " + util.inspect(data.sessions[session_number], false, null));
    start_date = rss.getStartDate(data.sessions[session_number]);
    lab        = rss.getLab(data.sessions[session_number]);
    lab_id     = data.labCodeToLabId[lab];

    if (! lab_id) { console.error("ERROR: site_id lookup failed for " + hui_abv); process.exit(1) };

    /*
    going to assume that the table is empty because using the auto_increment values will only work if they are empty
    console.log("-- delete any sample data associated with this session"); 
    console.log("delete from samples where lab_id = '" + lab_id + "' and session_number = " + session_number + ";");
    console.log(""); 
    console.log("-- delete this session, though may not exist yet"); 
    console.log("delete from sessions where lab_id = '" + lab_id + "' and session_number = " + session_number + ";");
    */
    console.log(""); 
    console.log("-- insert this session"); 
    console.log("insert into sessions (lab_id, session_number, first_sample_day) values (" + lab_id + ", " + session_number + ", '" + start_date + "');");

    // now lets insert the sample information.  It is in an array associated with the session
    samples = data.sessions[session_number];
    for (j = 0; j < samples.length; ++j) {
      ++sample_auto_increment;              // this will be the sample_id that is being generated by RDBMS, so hopefully will be in sync.
      sample  = samples[j];
      hui_abv      = sample['Station'];
      site_id       = data.huiAbvToSiteId[hui_abv];
      date_and_time = sample['Date'] + " " + sample['Time'];
      moon          = sample['Moon'];
      qa_code       = 162;   // awaiting approval

      // insitu measurements

      //temperature          = sample['Temp'];
      //salinity             = sample['Salinity'];
      //dissolved_oxygen     = sample['DO'];
      //dissolved_oxygen_pct = sample['DO%'];
      //ph                   = sample['pH'];
      //turbidity_1          = sample['Turb1'];
      //turbidity_2          = sample['Turb2'];
      //turbidity_3          = sample['Turb3'];

      temperature          = checkForQA(qaInserts, sample['Temp'],      sample_auto_increment, 'temperature',          'Temp');
      salinity             = checkForQA(qaInserts, sample['Salinity'],  sample_auto_increment, 'salinity',             'Salinity');
      dissolved_oxygen     = checkForQA(qaInserts, sample['DO'],        sample_auto_increment, 'dissolved_oxygen',     'DO');
      dissolved_oxygen_pct = checkForQA(qaInserts, sample['DO%'],       sample_auto_increment, 'dissolved_oxygen_pct', 'DO%');
      ph                   = checkForQA(qaInserts, sample['pH'],        sample_auto_increment, 'ph',                   'pH');
      turbidity_1          = checkForQA(qaInserts, sample['Turb1'],     sample_auto_increment, 'turbidity_1',          'Turbidity');
      turbidity_2          = checkForQA(qaInserts, sample['Turb2'],     sample_auto_increment, 'turbidity_2',          'Turbidity');
      turbidity_3          = checkForQA(qaInserts, sample['Turb3'],     sample_auto_increment, 'turbidity_3',          'Turbidity');

      // handle comments
      //console.log("COMMENT ", sample['Comments']);
      //console.log("COMMENT LENGTH", sample['Comments'].length);
      if (sample.Comments.length == 0) {
       comments_str = "null";
      }
      else {
        comments_str = "\"" + sample.Comments + "\"";
      }
      //console.log("COMMENT STRING", comments_str);

      // workers involved
      workerIdsToAdd = [];
      workerId = getWorkerId(data, sample['Sampler']);
      if (workerId) {
        workerIdsToAdd.push(workerId);
      }
      workerId = getWorkerId(data, sample['Sampler2']);
      if (workerId) {
        workerIdsToAdd.push(workerId);
      }
      workerId = getWorkerId(data, sample['Sampler3']);
      if (workerId) {
        workerIdsToAdd.push(workerId);
      }


      // check all the lookup data and make sure it found something
      if (! site_id) { console.error("ERROR: site_id lookup failed for " + hui_abv); process.exit(1) };

      cmd = "insert into samples (";
      cmd +=   "site_id, ";
      cmd +=   "date_and_time, ";
      cmd +=   "moon, ";
      cmd +=   "qa_code, ";
      cmd +=   "session_id, ";
      cmd +=   "temperature, ";
      cmd +=   "salinity, ";
      cmd +=   "dissolved_oxygen, ";
      cmd +=   "dissolved_oxygen_pct, ";
      cmd +=   "ph, ";
      cmd +=   "turbidity_1, ";
      cmd +=   "turbidity_2, ";
      cmd +=   "turbidity_3, ";
      cmd +=   "comments";
      cmd +=   ") ";
      cmd += "  values (";
      cmd +=          site_id + ",";
      cmd +=    "'" + date_and_time + "',";
      cmd +=          moon + ",";
      cmd +=          qa_code + ",";
      cmd +=          session_auto_increment + ",";
      cmd +=          temperature + ",";
      cmd +=          salinity + ",";
      cmd +=          dissolved_oxygen + ",";
      cmd +=          dissolved_oxygen_pct + ",";
      cmd +=          ph + ",";
      cmd +=          turbidity_1 + ",";
      cmd +=          turbidity_2 + ",";
      cmd +=          turbidity_3 + ",";
      cmd +=          comments_str;
      cmd +=    ");";

      console.log(cmd);

      // handle workers

      for (workerIndex = 0; workerIndex < workerIdsToAdd.length; ++ workerIndex) {
        cmd = "insert into sample_workers (";
        cmd +=   "sample_id, ";
        cmd +=   "worker_id";
        cmd +=   ") ";
        cmd += "  values (";
        cmd +=          sample_auto_increment + ",";
        cmd +=          workerIdsToAdd[workerIndex];
        cmd +=    ");";
        console.log(cmd);
      }

    }
  }
  console.log("");
  console.log("-- samples with qa issues");

  for (k = 0; k < qaInserts.length; ++k) {
    console.log(qaInserts[k]);
  }

  if (callback) {
    callback();
  }
}


theData = {};
getInitialsToWorkerId(theData, false, function () {
   getHuiCodeToSiteId(theData, false, function () {
     getLabCodeToLabId(theData, false, function () {
       getMaxSessionId(theData, false, function () {
         getMaxSampleId(theData, false, function () {
           readSpreadSheetFiles(theData, false, function () {
             printLookupData(theData, true, function () {
               createSqlStatements(theData, null);
             });
           });
         });
       });
     });
  });
});
