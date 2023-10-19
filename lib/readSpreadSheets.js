

var util  = require('util');
var fs    = require('fs');
var path  = require('path');
var validator = require('./validator.js');

var reportError = function (theError, SampleID, filename) {
 console.log("-- " + theError + " sample: " + SampleID + " in " + filename );
 console.error(theError + " sample: " + SampleID + " in " + filename );
  //process.exit(1);
};

// This is a workaround for a problem with the database design.  There was a concept
// of a West Maui lab and a South Maui lab, one at Lahainaluna HS and the other at
// the National Marine Sanctuary.  Then, due to COVID-19, these labs were closed
// and the labs needed to be moved.  There was even a time when the lab work for
// both sides was done in the South Maui lab.  The lab codes then almost became
// useless to determine whether a session belonged to West Maui or South Maui.
// For this script, the workaround will be to use sheets as the determining factor
// for which region the session belongs to.

let sheetnameToLabKV = {
  'Hui o ka Wai Ola Data Entry - Team Kamaole.tsv'      : "NMS",
  'Hui o ka Wai Ola Data Entry - Team Makena.tsv'       : "NMS",
  'Hui o ka Wai Ola Data Entry - Team North Kihei.tsv'  : "NMS",
  'Hui o ka Wai Ola Data Entry - Team Wailea.tsv'       : "NMS",
  'Hui o ka Wai Ola Data Entry - Team Fire Response.tsv': "LLHS",
  'Hui o ka Wai Ola Data Entry - Team Olowalu.tsv'      : "LLHS",
  'Hui o ka Wai Ola Data Entry - Team Polanui.tsv'      : "LLHS",
  'Hui o ka Wai Ola Data Entry - Team R2RN.tsv'         : "LLHS",
  'Hui o ka Wai Ola Data Entry - Team R2RS.tsv'         : "LLHS"
};


/* returns the lines from the spread sheet in a list, one object per line 

The objects look like this:
[ { Nut_Dup: 'no',
    Sed_Sample: 'no',
    Session: '28',
    Team: 'Olowalu',
    Lab: 'LLHS',
    Sampler: 'RN',
    Sampler2: 'MG',
    Sampler3: 'LO',
    Station: 'OPM',
    SampleID: 'OPM171005',
    Location: '2073',
    SiteName: 'Martin Hale',
    ......

    labCode is passed in as a workaround.  See note at the top about filenames to lab code lookup
*/

var readTeamSheet = function(teamSheetFile, labCode) {
  var lineList = [];
  var lines;
  var pieces;
  var lineCount = 0;
  var j;
  var contents = fs.readFileSync(teamSheetFile, 'utf8')
  var filename = path.basename(teamSheetFile);
  //console.log("contents: " + contents);
  lines = contents.split("\n");
  lines.forEach( function (line) {
      //console.log("line: " + line);
      ++lineCount;
      pieces = line.split("\t");
      //console.log("line " + lineCount + " line length " + pieces.length);
      if (lineCount > 3) {  // first three lines are header information
        // for (j = 0; j < pieces.length; ++j) { console.log(j, pieces[j]); }  // print out all pieces for debug
        obj = {};
        obj['Added_to_Main'] =  pieces[0];  // not going to use this
        obj['Ver_By_Dana']   =  pieces[1];  // not going to use this
        obj['Nut_Sample']    =  pieces[2];
        obj['Nut_Dup']       =  pieces[3];
        obj['Sed_Sample']    =  pieces[4];
        obj['Session']       =  pieces[5];
        obj['Team']          =  pieces[6];
        //obj['Lab']           =  pieces[7];  // removed because lab code stopped mapping to West and South Maui for the report
        obj['Lab']           =  labCode;
        obj['Sampler']       =  pieces[8];
        obj['Sampler2']      =  pieces[9];
        obj['Sampler3']      =  pieces[10];
        obj['Station']       =  pieces[11];
        obj['SampleID']      =  pieces[12];
        // had a problem where spreadsheet was changed when sites were changed and had column shifts that mismatched the
        // stationID and SampleID.  Check here and print to stderr
        let stationFromSampleID = obj.SampleID.substr(0,3);
        //console.log(`STATIONID : ${obj.Station}, ID from SampleID : ${stationFromSampleID}`);
        if (obj.Station !== stationFromSampleID) {
          console.error(`Found stationID inconsistance on line ${line}`);
          console.error(`stationID : ${obj.Station} not equal to ID from SampleID : ${obj.SampleID} file: ${filename}`);
        }

        obj['Location']      = pieces[13];
        obj['SiteName']      = pieces[14];

        validator.isDate(pieces[15])       ? obj['Date']    = pieces[15] : reportError("'" + pieces[15] + "' date is not a correctly formed (YYYY-MM-DD)", obj.SampleID, filename);

        // had a problem where date in the SampleID did not the date field
        let dateFromSampleID = `20${obj.SampleID.substr(3,2)}-${obj.SampleID.substr(5,2)}-${obj.SampleID.substr(7,2)}`;    // ex: RSN180622 -> 2018-06-22
        // console.error(`DATES ${obj['Date']} ${dateFromSampleID}`);
        if (obj.Date !== dateFromSampleID) {
          console.error(`Found Date inconsistancy on line ${line}, file: ${filename}`);
          console.error(`date : ${obj.Date} not equal to date from SampleID : ${obj.SampleID}`);
        }
        

        if (validator.isHourMinute(pieces[16]) ) {
           obj['Time']    = pieces[16];
        }
        else if (pieces[16] === "") {  // if a site is not sampled due to conditions at the site, etc.  The time will be blank
           reportError("'" + pieces[16] + "' time is blank, which may be a uncollected sample, setting to NULL", obj.SampleID, filename);
           obj['Time']    = "null";
        }
        else {
           reportError("'" + pieces[16] + "' time is not a correctly formed (HH-MM)", obj.SampleID, filename);
        }
        obj['40D#']          = pieces[17];
        obj['2100Q#']        = pieces[18];
        obj['pHInst#']       = pieces[19];
        obj['DOInst#']       = pieces[20];
        obj['SalInst#']      = pieces[21];
        obj['Moon']          = pieces[22];
        obj['Cloud_1_8']     = pieces[23];
        obj['Rain_1_4']      = pieces[24];
        obj['Wind_dir']      = pieces[25];
        obj['SampleID2']     = pieces[26];
        obj['Temp']          = pieces[27];
        obj['Salinity']      = pieces[28];
        obj['DO']            = pieces[29];
        obj['DO%']           = pieces[30];
        obj['pH']            = pieces[31];
        obj['Turb1']         = pieces[32];
        obj['Turb2']         = pieces[33];
        obj['Turb3']         = pieces[34];
        obj['Average Turbidity'] = pieces[35];
        obj['CV Turbidity']      = pieces[36];
        obj['blank']      = pieces[37];    // for some reason getting a blank column
        obj['Waves']      = pieces[38];
        obj['Wind']       = pieces[39];
        obj['Stream']     = pieces[40];
        obj['Swimmers']   = pieces[41];
        obj['On Beach']   = pieces[42];
        obj['Campers']    = pieces[43];
        // any remaining columns become comments.  Put them into an array.
        // this allows users of the spread sheet to use multiple columns far right of the sheet
        // as does happen either by accident or on purpose.
        let comments = [];
        for (let col = 44; col < pieces.length; ++ col) {
          //console.log(`adding ${pieces[col]}`);
          comments.push(pieces[col]);
        }
        // join the elements of the comments array into one string.
        obj['Comments']   = comments.join(' ').trim(); // remove leading and trailing whitespace, which may reduce some to "". Also removes Microsoft end line ("\r")
        lineList.push(obj);
      }
    });
  return lineList;
}; 


/* gets the paths to the team sheets */

var getTeamSheets = function(directory) {
  var teamSheets = [];
  //console.log("checking directory " + directory);
  try {
     var files = fs.readdirSync(directory);
     files.map(function (file) {
         return path.join(directory, file);
     }).filter(function (file) {
         //console.log("checking file " + file);
         return (
                  fs.statSync(file).isFile() &&
                  (path.basename(file).match(/Team/) != null) &&
                  (path.basename(file).match(/\.tsv$/) != null)
                );
     }).forEach(function (filteredFile) {
         //var hostname = path.basename(filteredFile).replace("\.local", "");
         //console.log("try-catch version %s (%s)", filteredFile, path.extname(filteredFile));
         //var base = path.basename(filteredFile);
         //console.log("adding " + filteredFile);
         teamSheets.push(filteredFile);
     });
  } catch (err) {
     console.log("ERROR CAUGHT in getTeamSheets: " + err);
    return null;
  }
  return teamSheets.sort();
}

/* returns an array of session objects */

var readTeamSheets = function(directory) {
  var i, j;
  var sessions = {};
  var session  = null;
  var siteSamples = [];
  var siteSample = null;
  var teamSheets = getTeamSheets(directory); // returning a list of paths of the sheet files
  var startDate = null;
  var endDate   = null;


  for (i = 0; i < teamSheets.length; ++i) {
    //console.log("Team sheet: " + teamSheets[i]);

    let filename = path.basename(teamSheets[i]);

    // check to see if this is a known file for the workaround of knowning which lab this file belongs to (West: LLHS, South: NMS
    if (sheetnameToLabKV[filename]) {

      let labCode = sheetnameToLabKV[filename];

      siteSamples = readTeamSheet(teamSheets[i], labCode);  // returns a list of objects, each object a site sample
      for (j = 0; j < siteSamples.length; ++j) {
        siteSample = siteSamples[j];
        //console.log("siteSample " + util.inspect(siteSample, false, null));
        // make the key to the list a combination of Lab ID and Session since the labs have their own independent Sessions number
        session = labCode + ":" + siteSample.Session;
        //console.log("session: " + session);
        if (sessions[session] == null) {
          sessions[session] = [];
        }
        sessions[session].push(siteSample);
      }
    }
    else {
      console.error(`Did not recognize file name "${filename}" ...... exiting`);
      console.log(`Did not recognize file name "${filename}" ...... exiting`);
      process.exit(1);
    }
  }
  return sessions;
};


/*
takes a list of siteSamples and returns the earliest date. This will probably need to come from the sessions
   data sheet some time, but currently not in there.
*/
var getStartDate = function(siteSamples) {

  var startDate = '9999-99-99';
  for (j = 0; j < siteSamples.length; ++j) {
    siteSample  = siteSamples[j];
    //console.log("DATE : = " + siteSample['Date']);
    if (siteSample['Date'] < startDate) {
      startDate = siteSample['Date'];
    }
  }
  return startDate;
};


var getLab = function(siteSamples) {

  let lab = null;
  for (j = 0; j < siteSamples.length; ++j) {
    let siteSample  = siteSamples[j];
    //console.log("LAB : = " + siteSample['Lab']);
    if (! lab ) {
      lab = siteSample['Lab'];
    } 
    else {
      if (lab != siteSample['Lab']) {
        console.log("ERROR: expecting all lab values to be the same for this set of samples");
        console.log(`expecting ${lab} but found ${siteSample['Lab']} for sampleID ${siteSample['SampleID']} session ${siteSample['Session']}`);
        console.error("ERROR: expecting all lab values to be the same for this set of samples");
        console.error(`expecting ${lab} but found ${siteSample['Lab']} for sampleID ${siteSample['SampleID']} session ${siteSample['Session']}`);
      }
    }
  }
  return lab;
};

exports.readTeamSheets = readTeamSheets;
exports.getStartDate = getStartDate;
exports.getLab = getLab;



