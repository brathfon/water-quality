var util = require('util');
//var debug = require("../../lib/cloningMonitorDebug");
var chalk = require("chalk");
var request = require('request');
var dfHelper = require('./dataFormatHelper');

var apiOptions = null;

if (process.env.PORT) {
  apiOptions = { server: "http://localhost:"  + process.env.PORT};
  console.log(chalk.blue("Setting api url to " + util.inspect(apiOptions, false, null)));
}
else {
  console.log("ERROR: process.env.PORT not set");
}


module.exports.sampleSession = function (req, res) {
  res.render('sampleSession', { title: 'Sample Session' });
};


var getLabSessionsOverviewData =  function (req, res, data, callback) {
  var path = "/api/getLabSessionsOverview";
  var requestOptions = {
    url: apiOptions.server + path,
    method: "GET",
    json : {}
  };
  request(
    requestOptions,
    function(err, response, labSessions) {
      data["labSessions"] = labSessions;  // add the results to the data object
      if (callback) {
        callback(req, res, data, callback);
      }
    }
  );
};


var getSamplesForSessionData =  function (req, res, data, callback) {
  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var path = "/api/getSamplesForSession/" + labId + "/" + sessionNumber ;
  var requestOptions = {
    url: apiOptions.server + path,
    method: "GET",
    json : {}
  };
  request(
    requestOptions,
    function(err, response, samples) {
      data["samples"] = samples;
      if (callback) {
        callback(req, res, data, callback);
      }
    }
  );
};


var getWorkersForSessionData =  function (req, res, data, callback) {
  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var path = "/api/getWorkersForSession/" + labId + "/" + sessionNumber ;
  var requestOptions = {
    url: apiOptions.server + path,
    method: "GET",
    json : {}
  };
  request(
    requestOptions,
    function(err, response, workers) {
      data["workers"] = workers;
      if (callback) {
        callback(req, res, data, callback);
      }
    }
  );
};

/****************************  LabSessionsOverview *******************************/

var renderLabSessionsOverview = function(req, res, data){
  res.render('labSessionsOverview',
    { title: 'Lab Sessions',
      labSessions: data.labSessions
    });
};


module.exports.labSessionsOverview = function (req, res) {
  var data = {};
  getLabSessionsOverviewData(req, res, data, function () { 
    renderLabSessionsOverview(req, res, data);
  });
};


/****************************  samplesForSession *******************************/

var renderSamplesForSession = function(req, res, data){
  // will be doing some re-org of data here
  var dataByDate = dfHelper.organizeSamplesAndWorkersByDate(data.samples, data.workers);
  console.log(util.inspect(data, false, null));
  var title = "Samples for " + req.params.labLongName + ", Session " + req.params.sessionNumber;
  res.render('samplesForSession',
    { title: title,
      dataByDate: dataByDate
    });
};


module.exports.samplesForSession = function (req, res) {
  var data = {};
  getSamplesForSessionData(req, res, data, function () { 
    getWorkersForSessionData(req, res, data, function () { 
      renderSamplesForSession(req, res, data);
    });
  });
};

