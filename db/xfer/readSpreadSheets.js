

var util  = require('util');
var fs    = require('fs');
var path  = require('path');


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
*/

var readTeamSheet = function(teamSheetFile) {
  var lineList = [];
  var lines;
  var pieces;
  var lineCount = 0;
  var j;
  var contents = fs.readFileSync(teamSheetFile, 'utf8')
  //console.log("contents: " + contents);
  lines = contents.split("\n");
  lines.forEach( function (line) {
      //console.log("line: " + line);
      ++lineCount;
      pieces = line.split("\t");
      //console.log("line " + lineCount + " line length " + pieces.length);
      if (lineCount > 3) {  // first three lines are header information
        if (pieces.length === 44) {
          //for (j = 0; j < pieces.length; ++j) {
            //console.log(pieces[j]);
          //}
          obj = {};
          obj['Added_to_Main'] =  pieces[0];  // not going to use this
          obj['Ver_By_Dana']   =  pieces[1];  // not going to use this
          obj['Nut_Dup']       =  pieces[2];
          obj['Sed_Sample']    =  pieces[3];
          obj['Session']       =  pieces[4];
          obj['Team']          =  pieces[5];
          obj['Lab']           =  pieces[6];
          obj['Sampler']       =  pieces[7];
          obj['Sampler2']      =  pieces[8];
          obj['Sampler3']      =  pieces[9];
          obj['Station']       = pieces[10];
          obj['SampleID']      = pieces[11];
          obj['Location']      = pieces[12];
          obj['SiteName']      = pieces[13];
          obj['Date']          = pieces[14];
          obj['Time']          = pieces[15];
          obj['40D#']          = pieces[16];
          obj['2100Q#']        = pieces[17];
          obj['pHInst#']       = pieces[18];
          obj['DOInst#']       = pieces[10];
          obj['SalInst#']      = pieces[20];
          obj['Moon']          = pieces[21];
          obj['Cloud_1_8']     = pieces[22];
          obj['Rain_1_4']      = pieces[23];
          obj['Wind_dir']      = pieces[24];
          obj['SampleID2']     = pieces[25];
          obj['Temp']          = pieces[26];
          obj['Salinity']      = pieces[27];
          obj['DO']            = pieces[28];
          obj['DO%']           = pieces[29];
          obj['pH']            = pieces[30];
          obj['Turb1']         = pieces[31];
          obj['Turb2']         = pieces[32];
          obj['Turb3']         = pieces[33];
          obj['Average Turbidity'] = pieces[34];
          obj['CV Turbidity']      = pieces[35];
          obj['blank']      = pieces[36];    // for some reason getting a blank column
          obj['Waves']      = pieces[37];
          obj['Wind']       = pieces[38];
          obj['Stream']     = pieces[39];
          obj['Swimmers']   = pieces[40];
          obj['On Beach']   = pieces[41];
          obj['Campers']    = pieces[42];
          obj['Comments']   = pieces[43];
          lineList.push(obj);
        }
        else {
          console.log("ERROR: unexpected number of column: " + pieces.length + ". Expecting 44.");
        }
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
                  (path.basename(file).match(/^Team/) != null) &&
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
    siteSamples = readTeamSheet(teamSheets[i]);  // returns a list of objects, each object a site sample
    for (j = 0; j < siteSamples.length; ++j) {
      siteSample = siteSamples[j];
      //console.log("siteSample " + util.inspect(siteSample, false, null));
      session = siteSample.Session;
      //console.log("session: " + session);
      if (sessions[session] == null) {
        sessions[session] = [];
      }
      sessions[session].push(siteSample);
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

  var lab = null;
  for (j = 0; j < siteSamples.length; ++j) {
    siteSample  = siteSamples[j];
    //console.log("DATE : = " + siteSample['Date']);
    if (! lab ) {
      lab = siteSample['Lab'];
    } 
    else {
      if (lab != siteSample['Lab']) {
        console.log("ERROR: expecting all lab values to be the same for this set of samples");
      }
    }
  }
  return lab;
};

exports.readTeamSheets = readTeamSheets;
exports.getStartDate = getStartDate;
exports.getLab = getLab;



