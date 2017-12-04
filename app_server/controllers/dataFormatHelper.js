var util = require('util');


/*
This function takes a list of samples and a list of workers who took samples and organizes them
into a list of objects, each object has a date, a list of samples, and a list of workers that
did sampling on that date.  It is assumed that the data coming is in date order.
*/


module.exports.organizeSamplesAndWorkersByDate = function (samples, workers) {

  var ssi     = null;   // sample index
  var wi      = null;   // worker index
  var theDate = null;  // worker index
  var obj     = null;

  var dateIndex = -1;
  var dateIndexLookup = {};
  var results   = [];

  // loop through
  for (ssi = 0; ssi < samples.length; ++ssi) {
    theDate = samples[ssi].date;
    //console.log("date: " + theDate + " dateIndexLookup: " + util.inspect(dateIndexLookup, false, null));
    if (dateIndexLookup[theDate] == null) {
      //console.log("first time seeing |" + theDate + "|");
      ++dateIndex;
      dateIndexLookup[theDate] = dateIndex;
      //console.log("dateIndex " + dateIndex);
      obj = {};
      obj['date'] = theDate;
      obj['samples'] = [];
      obj['workers']     = [];
      obj['samples'].push(samples[ssi]);
      results.push(obj);
    }
    else {
      dateIndex = dateIndexLookup[theDate];
      results[dateIndex].samples.push(samples[ssi]);
    }
  }


  // loop through.  Note: should not find any workers on dates that were not already found when
  // looking through the samples, but will include logic of finding a date for the first time in
  // case there is something amiss in the database.
  for (wi = 0; wi < workers.length; ++wi) {
    theDate = workers[wi].date;
    //console.log("date: " + theDate + " dateIndexLookup: " + util.inspect(dateIndexLookup, false, null));
    if (dateIndexLookup[theDate] == null) {
      //console.log("first time seeing |" + theDate + "|");
      ++dateIndex;
      dateIndexLookup[theDate] = dateIndex;
      //console.log("dateIndex " + dateIndex);
      obj = {};
      obj['date'] = theDate;
      obj['samples'] = [];
      obj['workers']     = [];
      obj['workers'].push(workers[wi]);
      results.push(obj);
    }
    else {
      dateIndex = dateIndexLookup[theDate];
      results[dateIndex].workers.push(workers[wi]);
    }
  }

  //TDB  If error checking put in, could check for samples without workers or workers without samples, etc.

  console.log("results: " + util.inspect(results, false, null));
  return results;
};
