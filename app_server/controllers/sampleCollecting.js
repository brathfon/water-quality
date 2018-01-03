var util = require('util');
//var debug = require("../../lib/cloningMonitorDebug");
var chalk = require("chalk");
var request = require('request');
var dfHelper = require('./dataFormatHelper');
var env = require('get-env');

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
    function(err, response, labSessionsData) {
      data["labSessions"] = labSessionsData['labSessions'];  // add the results to the data object
      data["errors"]      = data["errors"].concat(labSessionsData['errors']);       // add any errors to the data object
      if (callback) {
        callback(req, res, data, callback);
      }
    }
  );
};


var getMaxSessionNumbersForLabsData =  function (req, res, data, callback) {
  var path = "/api/getMaxSessionNumbersForLabs";
  var requestOptions = {
    url: apiOptions.server + path,
    method: "GET",
    json : {}
  };
  request(
    requestOptions,
    function(err, response, maxSessionNumbersForLabs) {
      data["maxSessionNumbers"] = maxSessionNumbersForLabs['maxSessionNumbers'];  // add the results to the data object
      data["errors"]      = data["errors"].concat(maxSessionNumbersForLabs['errors']);       // add any errors to the data object
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
    function(err, response, samplesData) {
      data["samples"] = samplesData["samples"];
      data["errors"]  = data["errors"].concat(samplesData["errors"]);
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
    function(err, response, workersData) {
      data["workers"] = workersData["workers"];
      data["errors"]  = data["errors"].concat(workersData["errors"]);
      if (callback) {
        callback(req, res, data, callback);
      }
    }
  );
};

/****************************  LabSessionsOverview *******************************/

var renderLabSessionsOverview = function(req, res, data){
  //console.log(util.inspect(data, false, null));
  res.render('labSessionsOverview',
    { title: 'Lab Sessions',
      labSessions: data.labSessions,
      errors: data.errors
    });
};


module.exports.labSessionsOverview = function (req, res) {
  var data = {};
  data['errors'] = [];   // these may be multiple
  getLabSessionsOverviewData(req, res, data, function () { 
    renderLabSessionsOverview(req, res, data);
  });
};


/****************************  samplesForSession *******************************/

var renderSamplesForSession = function(req, res, data){
  // will be doing some re-org of data here
  var dataByDate = dfHelper.organizeSamplesAndWorkersByDate(data.samples, data.workers);
  console.log(util.inspect(req.params, false, null));
  console.log(util.inspect(dataByDate, false, null));
  var title = "Samples for " + req.params.labLongName + ", Session " + req.params.sessionNumber;
  res.render('samplesForSession',
    { title: title,
      dataByDate: dataByDate,
      labId: req.params.labId,
      sessionNumber: req.params.sessionNumber,
      errors: data.errors
    });
};


module.exports.samplesForSession = function (req, res) {
  var data = {};
  data['errors'] = [];   // these may be multiple
  getSamplesForSessionData(req, res, data, function () { 
    getWorkersForSessionData(req, res, data, function () { 
      renderSamplesForSession(req, res, data);
    });
  });
};

/************************** createNewSession *********************************/

var renderCreateNewSession = function(req, res, data){
  // will be doing some re-org of data here
  console.log(util.inspect(data, false, null));
  var title = "Create new session";
  res.render('createNewSession',
    { title: title,
      maxSessionNumbers: data.maxSessionNumbers,
      errors: data.errors
    });
};


module.exports.createNewSession = function (req, res) {
  var data = {};
  data['errors'] = [];   // these may be multiple
  getMaxSessionNumbersForLabsData(req, res, data, function () { 
    renderCreateNewSession(req, res, data);
  });
};


// this is the controller for the posting of the data from createNewSessions page
// it handles the post from that page and calls to api to do the actual creation
// of the session in the store.

module.exports.executeCreateNewSession =  function (req, res) {
  var requestOptions, path;
  path = '/api/createNewSession';
  var postData = {
    lab_id:         req.body.lab_id,
    session_number: req.body.session_number,
    start_date:     req.body.start_date
  };
  requestOptions = {
    url : apiOptions.server + path,
    method : "POST",
    json: postData
  };
  console.log("excuteCreateNewSession: " + util.inspect(requestOptions, false, null));
  request(
    requestOptions,
    function(err, response, body) {
      var data = {};
      //console.log("excuteCreateNewSession response " + util.inspect(response.body, false, null));
      if (response.statusCode === 201) {
        console.log("excuteCreateNewSessions response was code " + response.statusCode);
        var nextURL = '/labSessionsOverview';
        console.log("executeCreateNewSession redirecting to " + nextURL);
        res.redirect(nextURL);
      }
      else {
        console.log("ERROR: executeCreateNewSession post failed with a status of " + response.statusCode);
        
        //var data = {};
        if (response.body.errors !== null) {
          data['errors'] = response.body.errors;   // these error came back from the api
        }
        // send back a response that is reports the error.
        getMaxSessionNumbersForLabsData(req, res, data, function () {
          renderCreateNewSession(req, res, data);
        });
        //res.redirect('/labSessionsOverview');
      }
    }
  );
};



/************************** createNewSession *********************************/

var renderEditSampleDay = function(req, res, data){
  // will be doing some re-org of data here
  console.log(util.inspect(data, false, null));
  var title = "Edit Complete Day";
  res.render('editSampleDay',
    { title: title,
      //maxSessionNumbers: data.maxSessionNumbers,
      errors: data.errors
    });
};


module.exports.editSampleDay = function (req, res) {
  var data = {};
  data['errors'] = [];   // these may be multiple
  //getMaxSessionNumbersForLabsData(req, res, data, function () { 
    renderEditSampleDay(req, res, data);
 // });
};

