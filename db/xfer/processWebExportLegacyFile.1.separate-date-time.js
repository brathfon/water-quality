#!/usr/bin/env node

"use strict";

var mysql = require('mysql');
var util  = require('util');
var data = {};


var rwef  = require('./readWebExportLegacyFile');


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



// DANGER WILL ROBINSON.  This script is only for west maui so gets lab id for LLHS
var getLabId = function (data, endConnection, callback) {

   var i;

  connection.query("select lab_id from labs where lab_code = 'LLHS'", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['labId'] = null;
      for (i in rows) {   // expecting one row
        //console.log(util.inspect(rows[i], false, null));
        //console.log("lab_id " + rows[i].lab_id);
        data['labId'] = rows[i].lab_id;  // just one row
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
      console.log('Error while performing query to find lab id : ' + err);
      connection.end();
    }
  });
};


var readWebExportFile = function (data, endConnection, callback) {

  data['sessions'] = rwef.readWebExportFile(process.env.WQ_FILES + "/legacy-data/west-maui-legacy-data-sessions-1-27.tsv", data.huiAbvToSiteId);

  if (endConnection) {
    connection.end();
  }

  if (callback) {
    callback(data, endConnection, callback);
  }
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





var printLookupData = function (data, endConnection, callback) {

  var hui_abv = null;

  if (endConnection) {
    connection.end();
  }

  console.log("");
  //console.log("data " + util.inspect(data , false, null));
  console.log("-- lab id for West Maui "  + data.labId);
  console.log("");

  //console.log("data " + util.inspect(data , false, null));
  console.log("-- max session id "  + data.maxSessionId);
  console.log("");

  //console.log("data " + util.inspect(data , false, null));
  console.log("-- max sample id "  + data.maxSampleId);
  console.log("");

  for (hui_abv in data.huiAbvToSiteId) {
    console.log("-- hui_abv " + hui_abv + " site_id " + data.huiAbvToSiteId[hui_abv]);
  }
  
  if (callback) {
    callback();
  }
}

var fixDate = function (badDate) {

  var pieces = badDate.split("/");
  var month  = pieces[0];
  var day    = pieces[1];
  var year   = pieces[2];

  return "20" + year + "-" + month + "-" + day;

}


var checkForQA = function(qaInsertList, value, sampleId, columnName, reportName) {

   var returnValue = value;
   var cmd = null;

   if (value === "#N/A") {
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
  var session_number = null;
  var first_sample_day  = null;
  var lab_id      = null;
  var samples = null;  // list of site samples
  var sample  = null;
  var hui_abv      = null;
  var site_id       = null;
  var the_date = null;
  var the_time = null;
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

  var cmd                = null;

  var qaInserts = [];   // this is to hold all the insert statements into the qa_samples table

 // DANGER: there is an assumption that these parallel auto-increment value in the db
  var session_auto_increment  = data.maxSessionId;
  var sample_auto_increment   = data.maxSampleId;      
  var j, k;

  for (session_number in data.sessions) {
    ++session_auto_increment;  // DANGER: there is an assumption that this parallels auto-increment value in db
    console.log("-- session :  " + session_number + " session_id auto_increment : " + session_auto_increment);
    //console.log("samples " + util.inspect(data.sessions[session_number], false, null));
    first_sample_day = fixDate( rwef.getStartDate(data.sessions[session_number]) );
    //lab        = rwef.getLab(data.sessions[session_number]);
    lab_id     = data.labId;  // DANGER WILL ROBINSON.  This script is only for west maui so gets lab id for LLHS

    if (! lab_id) { console.log("ERROR: lab_id lookup failed for " + lab_id); process.exit(1) };

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
    console.log("insert into sessions (lab_id, session_number, first_sample_day) values (" + lab_id + ", " + session_number + ", '" + first_sample_day + "');");

    // now lets insert the sample information.  It is in an array associated with the session
    samples = data.sessions[session_number];
    for (j = 0; j < samples.length; ++j) {
      ++sample_auto_increment;              // this will be the sample_id that is being generated by RDBMS, so hopefully will be in sync.
      sample  = samples[j];
      hui_abv      = sample['Location'];
      site_id       = data.huiAbvToSiteId[hui_abv];
      the_date = fixDate(sample['Date']);
      the_time = sample['Time'];
      // moon          = sample['Moon'];  no moon in this data
      qa_code       = 162;   // awaiting approval
      // insitu measurements
      temperature          = checkForQA(qaInserts, sample['Temp'],      sample_auto_increment, 'temperature',          'Temp');
      salinity             = checkForQA(qaInserts, sample['Salinity'],  sample_auto_increment, 'salinity',             'Salinity');
      dissolved_oxygen     = checkForQA(qaInserts, sample['DO'],        sample_auto_increment, 'dissolved_oxygen',     'DO');
      dissolved_oxygen_pct = checkForQA(qaInserts, sample['DO%'],       sample_auto_increment, 'dissolved_oxygen_pct', 'DO%');
      ph                   = checkForQA(qaInserts, sample['pH'],        sample_auto_increment, 'ph',                   'pH');
      turbidity_1          = checkForQA(qaInserts, sample['Turbidity'], sample_auto_increment, 'turbidity_1',          'Turbidity');
      turbidity_2          = checkForQA(qaInserts, sample['Turbidity'], sample_auto_increment, 'turbidity_2',          'Turbidity');
      turbidity_3          = checkForQA(qaInserts, sample['Turbidity'], sample_auto_increment, 'turbidity_3',          'Turbidity');

      // check all the lookup data and make sure it found something
      if (! site_id) { console.log("ERROR: site_id lookup failed for " + hui_abv); process.exit(1) };

      cmd = "insert into samples (";
      cmd +=   "site_id, ";
      cmd +=   "the_date, ";
      cmd +=   "the_time, ";
      //cmd +=   "moon, ";
      cmd +=   "qa_code, ";
      cmd +=   "session_id, ";
      cmd +=   "temperature, ";
      cmd +=   "salinity, ";
      cmd +=   "dissolved_oxygen, ";
      cmd +=   "dissolved_oxygen_pct, ";
      cmd +=   "ph, ";
      cmd +=   "turbidity_1, ";
      cmd +=   "turbidity_2, ";
      cmd +=   "turbidity_3";
      cmd +=   ") ";
      cmd += "  values (";
      cmd +=          site_id + ",";
      cmd +=    "'" + the_date + "',";
      cmd +=    "'" + the_time + "',";
      //cmd +=          moon + ",";
      cmd +=          qa_code + ",";
      cmd +=          session_auto_increment + ",";
      cmd +=          temperature + ",";
      cmd +=          salinity + ",";
      cmd +=          dissolved_oxygen + ",";
      cmd +=          dissolved_oxygen_pct + ",";
      cmd +=          ph + ",";
      cmd +=          turbidity_1 + ",";
      cmd +=          turbidity_2 + ",";
      cmd +=          turbidity_3;
      cmd +=    ");";

      console.log(cmd);

    }
  }

  for (k = 0; k < qaInserts.length; ++k) {
    console.log(qaInserts[k]);
  }

  if (callback) {
    callback();
  }
}


getHuiCodeToSiteId(data, false, function () {
  getLabId(data, false, function () {
    readWebExportFile(data, false, function () {
      getMaxSessionId(data, false, function () {
        getMaxSampleId(data, false, function () {
          printLookupData(data, true, function () {
            createSqlStatements(data, null);
          });
        });
      });
    });
  });
});
