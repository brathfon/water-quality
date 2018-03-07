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
  //console.log("in getMaxSessionNumbersForLabsData data: " + util.inspect(data, false, null));
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


var getSamplesForSessionOnDateData =  function (req, res, data, callback) {
  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var theDate       = req.params.theDate;
  var path = "/api/getSamplesForSessionOnDate/" + labId + "/" + sessionNumber + "/" + theDate ;
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
  //console.log(util.inspect(req.params, false, null));
  //console.log(util.inspect(dataByDate, false, null));
  var title = "Samples for " + req.params.labLongName + ", Session " + req.params.sessionNumber;
  res.render('samplesForSession',
    { title: title,
      dataByDate: dataByDate,
      labId: req.params.labId,
      sessionNumber: req.params.sessionNumber,
      labLongName: req.params.labLongName,
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
  //console.log(util.inspect(data, false, null));
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
  //console.log("excuteCreateNewSession: " + util.inspect(requestOptions, false, null));
  request(
    requestOptions,
    function(err, response, body) {
      var data = {};
      data['errors'] = [];
      var errorMsg = null;
      //console.log("excuteCreateNewSession response " + util.inspect(response.body, false, null));
      if (response.statusCode === 201) {
        console.log("excuteCreateNewSessions response was code " + response.statusCode);
        var nextURL = '/labSessionsOverview';
        console.log("executeCreateNewSession redirecting to " + nextURL);
        res.redirect(nextURL);
      }
      else {

        errorMsg = {};
        errorMsg['title'] = "ERROR: executeCreateNewSession post failed with a status of " + response.statusCode;
        errorMsg['level'] = "Danger";
        errorMsg['text']  = [];
        errorMsg['text'].push("Your data was not saved in the database");
  
        console.log(errorMsg.title);
        data['errors'].push(errorMsg);
        
        if ((response.body.errors !== null) && (response.body.errors !== undefined)) {
          //data['errors'] = response.body.errors;   // these error came back from the api
          data['errors'] = data['errors'].concat(response.body.errors);   // these error came back from the api
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


/* this function calls the api to update the day */

var updateEditedSamplesOnDate =  function (req, res, dayObjsArray) {
  //console.log("updateEditSamplesOnDate req.body: " + util.inspect(req.body, false, null));
  var requestOptions, path;
  var labId         = req.body.labId;
  var sessionNumber = req.body.sessionNumber;
  var labLongName   = req.body.labLongName;
  var theDate       = req.body.theDate;


  if (dayObjsArray.length === 0) {
    sendJsonResponse(res, 404, {"message": "not expecting an empty list of days to update"});
    console.log("Error: not expecting an empty list of days to update");
    return;
  }

  var sample = dayObjsArray.pop();
  //console.log("updateEditedSamplesOnDate sample: " + util.inspect(sample, false, null));

  var putData = {
    theDate:              theDate,
    sample_id:            sample.sample_id,
    time:                 sample.time,
    temperature:          sample.temperature,
    salinity:             sample.salinity,
    dissolved_oxygen:     sample.dissolved_oxygen,
    dissolved_oxygen_pct: sample.dissolved_oxygen_pct,
    ph:                   sample.ph,
    turbidity_1:          sample.turbidity_1,
    turbidity_2:          sample.turbidity_2,
    turbidity_3:          sample.turbidity_3
  };

  path = '/api/updateOneSample';
  requestOptions = {
    url : apiOptions.server + path,
    method : "PUT",
    json: putData
  };
  //console.log("excuteEditSamplesOnDate: " + util.inspect(requestOptions, false, null));
  request(
    requestOptions,
    function(err, response, body) {
      var data = {};
      data['errors'] = [];
      var errorMsg = null;

      //console.log("excuteCreateNewSession response " + util.inspect(response.body, false, null));
      // this condition stops the recursion and returns to the page
      if ((response.statusCode === 201) && (dayObjsArray.length === 0)) {
        console.log("excuteEditSamplesOnDate response was code " + response.statusCode);
        //var nextURL = '/editSamplesOnDate/' + labId + "/" + sessionNumber + "/" + theDate;
        var nextURL = '/samplesForSession/' + labId + "/" + sessionNumber + "/" + labLongName;
        console.log("updateEditSamplesOnDate redirecting to " + nextURL);
        res.redirect(nextURL);
      }
      else if ((response.statusCode === 201) && (dayObjsArray.length > 0)) {  // call recursively
        updateEditedSamplesOnDate(req, res, dayObjsArray);
      }
      else {

        errorMsg = {};
        errorMsg['title'] = "ERROR: updateEditedSampleOnDate post failed with a status of " + response.statusCode;
        errorMsg['level'] = "Danger";
        errorMsg['text']  = [];
        errorMsg['text'].push("Your data was not saved in the database");
  
        console.log(errorMsg.title);
        data['errors'].push(errorMsg);
        
        if ((response.body.errors !== null) && (response.body.errors !== undefined)) {
          data['errors'] = data['errors'].concat(response.body.errors);   // these error came back from the api
        }
        // send back a response that is reports the error.
        // need to add these req.params back in
        req.params.labId = labId;
        req.params.sessionNumber = sessionNumber;
        req.params.theDate = theDate;
        req.params.labLongName = labLongName;
        getSamplesForSessionOnDateData(req, res, data, function () { 
          renderEditSamplesOnDate(req, res, data);
        });
      }
    }
  );
};



// this is the controller for the posting of updates to a days worth of collected data
// it handles the post from that page and calls to api to do the actual update
// of samples in the database.

module.exports.executeEditSamplesOnDate =  function (req, res) {
  //console.log("excuteEditSamplesOnDate req.body: " + util.inspect(req.body, false, null));
  var requestOptions, path;
  path = '/api/updateSamplesOnDate';
  var labId         = req.body.labId;
  var sessionNumber = req.body.sessionNumber;
  var theDate       = req.body.theDate;

  var alteredSamples = dfHelper.convertRequestBodyInputsToArrayOfObjs(req.body);
  
  updateEditedSamplesOnDate(req, res, alteredSamples);

};


/************************** editSamplesOnDate functions ******************************/

var renderEditSamplesOnDate = function(req, res, data){
  // will be doing some re-org of data here
  //console.log("renderEditSamplesOnDate data: " + util.inspect(data, false, null));
  //console.log("renderEditSamplesOnDate req.params: " + util.inspect(req.params, false, null));
  var theDate       = req.params.theDate;
  var labId         = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  var labLongName   = req.params.labLongName;
  var title   = "Edit day " + theDate + "     (session " + sessionNumber + ", " + labLongName + ")";
  res.render('editSamplesOnDate',
    { title:         title,
      theDate:       theDate,
      labId:         labId,
      sessionNumber: sessionNumber,
      labLongName:   labLongName,
      samples:       data.samples, 
      errors:        data.errors
    });
};


module.exports.editSamplesOnDate = function (req, res) {
  var data = {};
  data['errors'] = [];   // these may be multiple
    getSamplesForSessionOnDateData(req, res, data, function () { 
      renderEditSamplesOnDate(req, res, data);
  });
};

