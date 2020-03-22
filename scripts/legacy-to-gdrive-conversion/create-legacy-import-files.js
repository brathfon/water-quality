#!/usr/bin/env node

"use strict";

var util  = require('util');
var path  = require('path');
var fs    = require('fs');

// for passing around the data
var data = {};


var rwef  = require('../../lib/readWebExportLegacyFile');
var rsf   = require('../../lib/readSiteFile');

// going to hard code this since this is a one time script
data['siteFile']  = '../sites.txt';
data['legacyFile']  = process.env.WQ_FILES + "/legacy-data/west-maui-legacy-data-sessions-1-27.tsv";

const siteToTeam = {};

siteToTeam['OCO'] = 'Olowalu';
siteToTeam['OMM'] = 'Olowalu';
siteToTeam['OPB'] = 'Olowalu';
siteToTeam['OPM'] = 'Olowalu';
siteToTeam['OPP'] = 'Olowalu';
siteToTeam['OUB'] = 'Olowalu';

siteToTeam['OLP'] = 'Polanui';
siteToTeam['OSF'] = 'Polanui';
siteToTeam['PFF'] = 'Polanui';
siteToTeam['PLH'] = 'Polanui';
siteToTeam['PLT'] = 'Polanui';
siteToTeam['PPU'] = 'Polanui';

siteToTeam['RFN'] = 'R2RN';
siteToTeam['RFS'] = 'R2RN';
siteToTeam['RHL'] = 'R2RN';
siteToTeam['RMO'] = 'R2RN';   // Mokuleia, only one sample event
siteToTeam['RKO'] = 'R2RN';
siteToTeam['RKV'] = 'R2RN';
siteToTeam['RON'] = 'R2RN';

siteToTeam['RAB'] = 'R2RS';
siteToTeam['RCB'] = 'R2RS';
siteToTeam['RKS'] = 'R2RS';
siteToTeam['RNS'] = 'R2RS';
siteToTeam['RPO'] = 'R2RS';
siteToTeam['RWA'] = 'R2RS';


var getTeamForCode = function( theCode ) {

  let returnValue = "";

  if (siteToTeam[theCode] ){
    returnValue = siteToTeam[theCode];
  }
  else {
    console.error(`Could not find lookup data for code ${theCode} .... exiting`);
    process.exit(1);
  }
  return returnValue;
};

/* this data is for mapping site codes (stations) to location numbers (I guess DOH numbers) and the site name used in gdrive
   which does not match the sites names used in the database or the web exports or in the legacy file for sessions 1-28*/
const gdriveStationInfo = {};
gdriveStationInfo['OCO'] = {'location' : 2028, 'siteName' : 'Camp Olowalu'};
gdriveStationInfo['OMM'] = {'location' : 2029, 'siteName' : 'Mile Marker 14'};
gdriveStationInfo['OPB'] = {'location' : 2033, 'siteName' : 'Papalaua Beach'};
gdriveStationInfo['OPM'] = {'location' : 2073, 'siteName' : 'Martin Hale'};
gdriveStationInfo['OPP'] = {'location' : 2034, 'siteName' : 'Papalaua Pali'};
gdriveStationInfo['OUB'] = {'location' : 2032, 'siteName' : 'Ukumehame'};
gdriveStationInfo['OLP'] = {'location' : 2072, 'siteName' : 'Launiupoko'};
gdriveStationInfo['OSF'] = {'location' : 2027, 'siteName' : 'Olowalu Pier'};
gdriveStationInfo['PFF'] = {'location' : 2022, 'siteName' : '505 Front St'};
gdriveStationInfo['PLH'] = {'location' : 2023, 'siteName' : 'Lindsey Hale'};
gdriveStationInfo['PLT'] = {'location' : 2024, 'siteName' : 'Lahaina Town'};
gdriveStationInfo['PPU'] = {'location' : 2025, 'siteName' : 'Puamana'};
gdriveStationInfo['RFN'] = {'location' : 2003, 'siteName' : 'Fleming North'};
gdriveStationInfo['RFS'] = {'location' : 2005, 'siteName' : 'Kapalua Bay'};
gdriveStationInfo['RHL'] = {'location' : 2001, 'siteName' : 'Honolua Bay'};
gdriveStationInfo['RKO'] = {'location' : 2008, 'siteName' : "Ka'opala Bay"};
gdriveStationInfo['RKV'] = {'location' : 2074, 'siteName' : 'Kahana Village'};
gdriveStationInfo['RON'] = {'location' : 2004, 'siteName' : 'Oneloa Bay'};
gdriveStationInfo['RAB'] = {'location' : 2017, 'siteName' : 'Airport Beach'};
gdriveStationInfo['RCB'] = {'location' : 2020, 'siteName' : 'Canoe Beach'};
gdriveStationInfo['RKS'] = {'location' : 2071, 'siteName' : 'Kaanapali Shores'};
gdriveStationInfo['RNS'] = {'location' : 2006, 'siteName' : 'Napili Bay'};
gdriveStationInfo['RPO'] = {'location' : 2010, 'siteName' : 'Pohaku'};
gdriveStationInfo['RWA'] = {'location' : 2021, 'siteName' : 'Wahikuli'};
gdriveStationInfo['RMO'] = {'location' : 2002, 'siteName' : 'Mokuleia'};  // this was only sampled one time, so not in current gdrive


var getLocationForCode = function( theCode ) {

  let returnValue = "";

  if (gdriveStationInfo[theCode] ){
    returnValue = gdriveStationInfo[theCode].location;
  }
  else {
    console.error(`Could not find lookup data for code ${theCode} .... exiting`);
    process.exit(1);
  }
  return returnValue;
};


var getSiteNameForCode = function( theCode ) {

  let returnValue = "";

  if (gdriveStationInfo[theCode] ){
    returnValue = gdriveStationInfo[theCode].siteName;
  }
  else {
    console.error(`Could not find lookup data for code ${theCode} .... exiting`);
    process.exit(1);
  }
  return returnValue;
};



var getSiteData = function (data, callback) {

  console.log("In getSiteData");
  data['sites'] = rsf.readSiteFile(data.siteFile);

  //console.log("sites " + util.inspect(data.sites, false, null));

  if (callback) {
    callback();
  }

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


var fixDateFormat = function (aDate) {

  let returnValue = aDate;
  //console.log(`TEST trying ${aDate}`);
  let shortPattern = /[0-9]*\/[0-9]*\/[1-9][1-9]/; // example: 6/16/18
  let isoPattern   = /[1-9][0-9][0-9][0-9]\-[0-9][0-9]\-[0-9][0-9]/; // example: 2019-06-28

  //console.log(`TEST ${aDate.search(pattern)}`);

  if (aDate.search(shortPattern) === 0) {   // it matches
    //console.log(`TEST ${aDate} matches`);
    let month = "";
    let day   = "";
    let year  = "";
    [month, day, year] = aDate.split("/");
    //console.log(`TEST month ${month} day ${day}`);
    if (month < 10) {
      month = `0${month}`;
    }
    if (day < 10) {
      day = `0${day}`;
    }
    returnValue = `20${year}-${month}-${day}`;
    //console.log(`TEST returning ${returnValue}`);
  }
  else if (aDate.search(isoPattern) === 0) {   // it matches and is what we want
    returnValue = aDate;
    //console.log(`TEST ${aDate} matches iso`);
    let month = "";
    let day   = "";
    let year  = "";
    [year, month, day] = aDate.split("-");
    year = year.substring(2);
    //console.log(`TEST month ${month} day ${day} year ${year}`);
    returnValue = `${month}/${day}/${year}`;

    //console.log(`TEST returning ${returnValue}`);
  }
  else {
    console.log(`ERROR: unrecognized date format of ${aDate}.  Exiting ....`);
    console.error(`ERROR: unrecognized date format of ${aDate}.  Exiting ....`);
    process.exit();
  }

  return returnValue;
};


var fixTimeFormat = function (aTime) {

  let returnValue = aTime;

  // some samples do not have a time associated with them if for some reason the sample was not taken
  if (aTime === "null") {
    return returnValue;
  }
  //console.log(`TEST trying ${aTime}`);
  let needsFixedPattern = /[1-9]:[0-9][0-9]/; // example: 9:56
  let okPattern = /[0-2][0-9]:[0-9][0-9]/; // example: 9:56

  //console.log(`TEST ${aTime.search(pattern)}`);
  if (aTime.search(okPattern) === 0) {   // it matches and OK
    returnValue = aTime;
  }
  else if (aTime.search(needsFixedPattern) === 0) {   // it matches
    //console.log(`TEST ${aTime} matches`);
    let hours = "";
    let minutes   = "";
    [hours, minutes] = aTime.split(":");
    //console.log(`TEST hours ${hours} minutes ${minutes}`);
    if (hours < 10) {
      hours = `0${hours}`;
    }
    returnValue = `${hours}:${minutes}`;
    //console.log(`TEST returning ${returnValue}`);
  }
  else {
    console.error(`ERROR: unrecognized time format of ${aTime}.  Exiting ....`);
    console.log(`ERROR: unrecognized time format of ${aTime}.  Exiting ....`);
    process.exit();
  }
  return returnValue;
}



// some of the first sessions taken were stored in personal spread sheets (sessions 1-27, West Maui).
// Read those in.  This may eventually go away because it would be better for the data to be in the Google Sheets.

var readLegacyFile = function (data, callback) {

  console.log("In readLegacyFile");

  data['samples'] = {};  // the key of samples is the sample ID. ex: RWA190716, which encode the site and the date
                       // the value is an object with the information about the sample

  let sessions = rwef.readWebExportFile(data.legacyFile, data.sites);

  // readWebExport sends the data back organized in sessions.  That is no longer needed when creating a flat representation
  // each session has a list of samples, so loop through the sessions, then the samples, and push the samples onto the list
  for ( let sessionId in sessions ) {
    let i = 0;
    for (i = 0; i < sessions[sessionId].length; ++i) {
      sessions[sessionId][i]['NutSampled'] = 'yes';  // all legacy data had nutrient samples
      sessions[sessionId][i]['Date'] = fixDateFormat(sessions[sessionId][i]['Date']);  // put the date in the MM/DD/YY format
      sessions[sessionId][i]['Time'] = fixTimeFormat(sessions[sessionId][i]['Time']);  // put the time in the HH:MM format
      // legacy data only had the average turbidity in it.  Assign that to all 3.
      sessions[sessionId][i]['Turb1'] = sessions[sessionId][i]['Turbidity'];
      sessions[sessionId][i]['Turb2'] = sessions[sessionId][i]['Turbidity'];
      sessions[sessionId][i]['Turb3'] = sessions[sessionId][i]['Turbidity'];
      // all legacy data came from the Lahainaluna High School lab
      sessions[sessionId][i]['Lab']   = "LLHS";
      data.samples[sessions[sessionId][i].SampleID] = sessions[sessionId][i];
    }
  }

  //console.log("samples " + util.inspect(data.samples, false, null));

  if (callback) {
    callback();
  }
};


var writeFile = function (filePath, dataToWrite) {

  console.log(`Writing file to ${filePath}`);

  fs.writeFileSync(filePath, dataToWrite, function(err) {
    if(err) {
        console.error(`ERROR writing ${filePath}`);
        console.log(`ERROR writing ${filePath}`);
        console.error(err);
        return console.log(err);
    }
    console.log("The file was saved to " + filePath);
  });
};


var createLegacyImportFiles = function (data, callback) {

  console.log("In createLegacyImportFiles");

  let baseDir = "/tmp";

  console.log("Creating report for all samples");


  for (let team in data.dataByTeams) {
     console.log("Creating report for team " + team);
     let filePath = path.join('/tmp/' + `legacy-data-team-${team}.csv`);
     writeFile(filePath, data.dataByTeams[team].join('\n'));
  }

  if (callback) {
    callback();
  }

};


var createImportRows = function (data, callback) {

  console.log("in createImportRows data " + util.inspect(data , false, null));

  data['dataByTeams'] = {};   // key will be the team name like r2rn, r2ns, value will be a list of the samples for that team

  //let samples = data.samples;
  for (let sampleID in data.samples) {

    let sample = data.samples[sampleID];
    console.log("sample " + util.inspect(sample , false, null));

    let row = '';

    let the_date = sample['Date'];
    let the_time = sample['Time'];
    // insitu measurements
    let stationCode          = sample['Location'];   // this is a code, like RKV
    let locationNum          = getLocationForCode(stationCode);  // this is some number DOH, like 2022
    let siteName             = getSiteNameForCode(stationCode);  // this is the longer site name used in gdrive
    let session              = sample['Session'];
    let teamName             = getTeamForCode(stationCode);


    let temperature          = sample['Temp'];       // degrees F
    let salinity             = sample['Salinity'];
    let dissolved_oxygen     = sample['DO'];
    let dissolved_oxygen_pct = sample['DO%'];
    let ph                   = sample['pH'];
    let turbidity_1          = sample['Turb1'];
    let turbidity_2          = sample['Turb2'];
    let turbidity_3          = sample['Turb3'];

    // Note: even though the data has nutrient measurements, that gets added in later with the process that updates nutrient data for all sessions

    row +=  "yes" + ",";         // copied to main database
    row +=  "yes" + ",";         // checked by Dana
    row +=  "yes" + ",";         // nutrient sample.  All legacy data had nutrient samples
    row +=  "no"  + ",";         // nutrient duplicate: none in the data
    row +=  "no"  + ",";         // sedimentation sample: may have been some, but not sure they are being saved and used. Info is not available in legacy data
    row +=  session + ",";
    row +=  teamName + ",";    // lab
    row +=  "LLHS" + ",";        // lab
    row +=  "" + ",";            // sampler 1, unknown
    row +=  "" + ",";            // sampler 2, unknown
    row +=  "" + ",";            // sampler 3, unknown
    row +=  stationCode + ",";   // site code
    row +=  sampleID + ",";
    row +=  locationNum + ",";
    row +=  siteName + ",";
    row +=  the_date + ",";
    row +=  the_time + ",";

    // now some information about the equipment that is not in the legacy spread sheet
    row +=  "" + ",";            // 40D#
    row +=  "" + ",";            // 2100Q#
    row +=  "" + ",";            // pHinst#
    row +=  "" + ",";            // DOInst#
    row +=  "" + ",";            // SalInst#
    row +=  "" + ",";            // Moon
    row +=  "" + ",";            // Cloud_1_8
    row +=  "" + ",";            // Rain_1_4
    row +=  "" + ",";            // Wind_dir

    row +=  sampleID + ",";      // repeat the sample ID
    row +=  temperature + ",";
    row +=  salinity + ",";
    row +=  dissolved_oxygen + ",";
    row +=  dissolved_oxygen_pct + ",";
    row +=  ph + ",";
    row +=  turbidity_1 + ",";
    row +=  turbidity_2 + ",";
    row +=  turbidity_3;


    // put the samples for each team in their own list in the data.dataByTeams hash
    let team = getTeamForCode(stationCode).toLowerCase();

    if (data.dataByTeams[team]) {
      data.dataByTeams[team].push(row);
    }
    else {
      data.dataByTeams[team] = [];
      data.dataByTeams[team].push(row);
    }
    console.log(row);
    //console.log("gdriveStationInfo " + util.inspect(gdriveStationInfo, false, null));

  }
  console.log("dataByTeam " + util.inspect(data.dataByTeams, false, null));

  if (callback) {
    callback();
  }
}


getSiteData(data, function () {
  readLegacyFile(data, function () {
    createImportRows(data, function () {
      createLegacyImportFiles(data, null);
     });
  });
});
