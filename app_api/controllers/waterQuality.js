var db = require('../models/db');


var sendJsonResponse = function(res, status, content) {
  res.status(status);
  res.json(content);
};

module.exports.getLabSessionsOverview = function (req, res) {

  db.connection.query("select * from lab_sessions_overview", function(err, rows, fields) {

    if (err) {
      sendJsonResponse(res, 400, err);
    } else {
      sendJsonResponse(res, 201, rows);
    }
  });
};


module.exports.getSamplesForSession = function (req, res) {

  var labId = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  console.log("sessionNumber " + sessionNumber);
  db.connection.query("call samples_for_session(" + labId + ", " + sessionNumber + ")", function(err, rows, fields) {

    if (err) {
      sendJsonResponse(res, 400, err);
    } else {
      sendJsonResponse(res, 201, rows[0]);  // calling a procedure returns a 2 element array with first element being the rows
    }                                       // and the second element being the meta data such as "fieldCount.
  });
};


module.exports.getWorkersForSession = function (req, res) {

  var labId = req.params.labId;
  var sessionNumber = req.params.sessionNumber;
  console.log("sessionNumber " + sessionNumber);
  db.connection.query("call workers_for_session(" + labId + ", " + sessionNumber + ")", function(err, rows, fields) {

    if (err) {
      sendJsonResponse(res, 400, err);
    } else {
      sendJsonResponse(res, 201, rows[0]);  // calling a procedure returns a 2 element array with first element being the rows
    }                                       // and the second element being the meta data such as "fieldCount.
  });
};
