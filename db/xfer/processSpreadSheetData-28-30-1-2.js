#!/usr/bin/env node


var mysql = require('mysql');
var util  = require('util');
var i = 0;
var data = {};
var sessions = null;


var rss  = require('./readSpreadSheets');

//sessions = rss.readTeamSheets("./data-sessions-28");
sessions = rss.readTeamSheets("./data-sessions-28-29");


/*
for (session in sessions) {
  console.log("session :  " + session);
  console.log("samples " + util.inspect(sessions[session], false, null));
}
*/


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



var getInitialsToWorkerId = function (data, endConnection, callback) {

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

  connection.query("select hui_code, site_id from sites", function(err, rows, fields) {
   
    if (endConnection) {
      connection.end();
    }
    if (!err) {
      //console.log('The solution is : ', rows);
      //console.log('The fields are  : ', fields);
      //console.log(util.inspect(rows, false, null));
      data['huiCodeToSiteId'] = {};
      for (i in rows) {
        //console.log(util.inspect(rows[i], false, null));
        //console.log("initials " + rows[i].initials);
        data['huiCodeToSiteId'][rows[i].hui_code] = rows[i].site_id;
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
      console.log('Error while performing query');
      connection.end();
    }
  });
};


var printLookupData = function (data, endConnection, callback) {
  if (endConnection) {
    connection.end();
  }

  //console.log("data " + util.inspect(data , false, null));

  for (initial in data.initialsToWorkerId) {
    console.log("-- initials " + initial + " worker_id " + data.initialsToWorkerId[initial]);
  }

  for (hui_code in data.huiCodeToSiteId) {
    console.log("-- hui_code " + hui_code + " site_id " + data.huiCodeToSiteId[hui_code]);
  }

  for (lab_code in data.labCodeToLabId) {
    console.log("-- lab_code " + lab_code + " lab_id " + data.labCodeToLabId[lab_code]);
  }

  if (callback) {
    callback();
  }
}


var getWorkerId = function(sampler_initials) {

  var worker_id = null;

  if (sampler_initials === '') {
    //console.log("blank sampler");
  }
  else {
    worker_id  = data.initialsToWorkerId[sampler_initials];
    if (! worker_id) { console.log("ERROR: worker_id lookup failed for '" + sampler_initials + "'"); process.exit(1) };
  }
  return worker_id;
}



var createSqlStatements = function (data, callback) {

  //console.log("data " + util.inspect(data , false, null));
  var start_date  = null;
  var lab         = null;
  var lab_id      = null;
  var samples = null;  // list of site samples
  var sample  = null;
  var hui_code      = null;
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

  var cmd                = null;
  var session_auto_increment  = 0;  // DANGER: there is an assumption that this parallels auto-increment value in db
  var sample_auto_increment   = 0;       // DANGER: there is an assumption that this parallels auto-increment value in db

  var workerId    = null;
  var workerIndex = null;

  for (session_number in sessions) {
    ++session_auto_increment;  // DANGER: there is an assumption that this parallels auto-increment value in db
    console.log("-- session :  " + session_number + " session_id auto_increment : " + session_auto_increment);
    //console.log("samples " + util.inspect(sessions[session], false, null));
    start_date = rss.getStartDate(sessions[session_number]);
    lab        = rss.getLab(sessions[session_number]);
    lab_id     = data.labCodeToLabId[lab];

    if (! lab_id) { console.log("ERROR: site_id lookup failed for " + hui_code); process.exit(1) };

    console.log(""); 
    console.log("use water_quality;"); 
    console.log(""); 
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
    console.log("insert into sessions (lab_id, session_number, start_date) values (" + lab_id + ", " + session_number + ", '" + start_date + "');");

    // now lets insert the sample information.  It is in an array associated with the session
    samples = sessions[session_number];
    for (j = 0; j < samples.length; ++j) {
      ++sample_auto_increment;              // this will be the sample_id that is being generated by RDBMS, so hopefully will be in sync.
      sample  = samples[j];
      hui_code      = sample['Location'];
      site_id       = data.huiCodeToSiteId[hui_code];
      date_and_time = sample['Date'] + " " + sample['Time'];
      moon          = sample['Moon'];
      qa_code       = 162;   // awaiting approval
      // insitu measurements
      temperature          = sample['Temp'];
      salinity             = sample['Salinity'];
      dissolved_oxygen     = sample['DO'];
      dissolved_oxygen_pct = sample['DO%'];
      ph                   = sample['pH'];
      turbidity_1          = sample['Turb1'];
      turbidity_2          = sample['Turb2'];
      turbidity_3          = sample['Turb3'];

      // workers involved
      workerIdsToAdd = [];
      workerId = getWorkerId(sample['Sampler']);
      if (workerId) {
        workerIdsToAdd.push(workerId);
      }
      workerId = getWorkerId(sample['Sampler2']);
      if (workerId) {
        workerIdsToAdd.push(workerId);
      }
      workerId = getWorkerId(sample['Sampler3']);
      if (workerId) {
        workerIdsToAdd.push(workerId);
      }


      // check all the lookup data and make sure it found something
      if (! site_id) { console.log("ERROR: site_id lookup failed for " + hui_code); process.exit(1) };

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
      cmd +=   "turbidity_3";
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
      cmd +=          turbidity_3;
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

  if (callback) {
    callback();
  }
}


getInitialsToWorkerId(data, false, function () {
   getHuiCodeToSiteId(data, false, function () {
     getLabCodeToLabId(data, false, function () {
       printLookupData(data, true, function () {
         createSqlStatements(data, null);
      });
    });
  });
});
  

