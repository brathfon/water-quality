var util = require('util');


/*
This function takes a list of samples and organizes them
into a list of objects, each object has a date, a list of samples.
It is assumed that the data coming is in date order.  NOTE: // WARNING
This is a bad assumption.  This might need to be reworked when
the new field is added to the sample table to record the default
order at the time of sample creation.
*/


module.exports.organizeSamplesByDate = function (samples) {

  var ssi     = null;   // sample index
  var theDate = null;
  var obj     = null;

  var dateIndex = -1;
  var dateIndexLookup = {};
  var results   = [];

  // loop through
  for (ssi = 0; ssi < samples.length; ++ssi) {
    theDate = samples[ssi].the_date;
    //console.log("date: " + theDate + " dateIndexLookup: " + util.inspect(dateIndexLookup, false, null));
    if (dateIndexLookup[theDate] == null) {
      //console.log("first time seeing |" + theDate + "|");
      ++dateIndex;
      dateIndexLookup[theDate] = dateIndex;
      //console.log("dateIndex " + dateIndex);
      obj = {};
      obj['the_date'] = theDate;
      obj['samples'] = [];
      obj['samples'].push(samples[ssi]);
      results.push(obj);
    }
    else {
      dateIndex = dateIndexLookup[theDate];
      results[dateIndex].samples.push(samples[ssi]);
    }
  }


  //TDB  If error checking put in, could check for samples without workers or workers without samples, etc.

  //console.log("results: " + util.inspect(results, false, null));
  return results;
};

/* ******************************************************************************************
Takes data from a submitted form in this structure:
req.body: { labId: '1',
  sessionNumber: '28',
  theDate: '2017-10-03',
  'sampleTag.41.time': '08:14:00',
  'sampleTag.41.temperature': '27',
  'sampleTag.41.salinity': '33.7',
  'sampleTag.41.dissolved_oxygen': '6.59',
  'sampleTag.41.dissolved_oxygen_sat': '101',
  'sampleTag.41.ph': '8.14',
  'sampleTag.41.turbidity_1': '2.33',
  'sampleTag.41.turbidity_2': '2.48',
  'sampleTag.41.turbidity_3': '2.51',
  'sampleTag.42.time': '08:40:00',
  'sampleTag.42.temperature': '26.8',

and returns it in this structure:

{ '41':
   { time: '08:14:00',
     temperature: '27',
     salinity: '33.7',
     dissolved_oxygen: '6.59',
     dissolved_oxygen_sat: '101',
     ph: '8.14',
     turbidity_1: '2.33',
     turbidity_2: '2.48',
     turbidity_3: '2.51' },
  '42':
   { time: '08:40:00',
     temperature: '26.8',
*/


module.exports.convertRequestBodyInputsToArrayOfObjs = function (reqBody) {

   var attr = null;
   var attrs = [];
   var value = null;
   var sampleId = null;
   var column = null;
   var returnObj = {};
   var returnArray = [];

   for (attr in reqBody) {
     if (attr.indexOf("sampleTag") === 0) {
       value = reqBody[attr];
       attrs = attr.split(".");
       sampleId = attrs[1];
       column = attrs[2];
       //console.log("sample_id = " + sampleId + " column " + column + " value " + value);
       if ((returnObj[sampleId] === null) || (returnObj[sampleId] === undefined)) {
         //console.log("found new sampleId of " + sampleId);
         returnObj[sampleId] = {};
         returnObj[sampleId]['sample_id'] = sampleId;
       }
       returnObj[sampleId][column] = value;
     }
   }
  for (x in returnObj) {
    returnArray.push(returnObj[x]);
  }
  return returnArray;
};
