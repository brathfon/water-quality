var debugExec = require('debug')('serv-auth:execLogin');
var debugRend = require('debug')('serv-auth:rendLogin');
var info      = require('debug')('info:serv-auth');
var danger    = require('debug')('danger:serv-auth');

var util = require('util');
var chalk = require("chalk");
var request = require('request');
var env = require('get-env');

var apiOptions = null;

if (process.env.PORT) {
  apiOptions = { server: "http://localhost:"  + process.env.PORT};
  info("Setting api url for auth ctrl to %s", apiOptions);
}
else {
  danger("ERROR: process.env.PORT not set");
}


// add a more user friendly error to the req body

var addSimpleErrorMsgToBody = function(body, title, level) {
  var errorMsg = {};
  errorMsg['title'] = title;
  errorMsg['level'] = level;
  errorMsg['text']  = [];
  // we are sending a different, more user friendly message
  body['errors'] = [];
  body['errors'].push(errorMsg);
};

/****************************  Login  *******************************/

var renderLogin = function(req, res){
  debugRend("req.body %o", req.body);
  res.render('login',
    { title: 'Login',
      email: req.body.email,
      errors: req.body.errors
    });
};


var login = function (req, res) {
  renderLogin(req, res);
};

module.exports.login = login;


module.exports.executeLogin =  function (req, res) {
  debugExec("req %o", req.body);
  var requestOptions, path;
  path = '/api/login';
  var postData = {
    email:   req.body.email,
    password: req.body.password,
  };
  requestOptions = {
    url : apiOptions.server + path,
    method : "POST",
    json: postData
  };
  debugExec("request options %o", requestOptions);
  request(
    requestOptions,
    function(err, response, body) {

      var errorMsg = null;
      var nextURL = null;

      debugExec("body : %o", body);

      // we don't want the password accidentally logged, if possible and are going to force them to re-enter it
      if (req.body.password) {
        req.body.password = "******";
      } 
      if (response.statusCode === 400) {
        debugExec("Got status code of 400");
        if (body.errors) {                 // will add these errors to the request
          debugExec("body.errors length is " + body.errors.length);
          if (body.errors.length === 1) {  // we will check to see if we recognize this error
            if (body.errors[0].title === "EMAIL_PARAM_NOT_PASSED") {
              debugExec("detected email param not set");
              addSimpleErrorMsgToBody(req.body, "You must enter your email", "Danger");
            }
            else if (body.errors[0].title === "PASSWORD_PARAM_NOT_PASSED") {
              debugExec("detected password param not set");
              addSimpleErrorMsgToBody(req.body, "You must enter your password", "Danger");
            }
            else {    // don't recognize it, just send it as is
            debugExec("did not recognize title of %s", body.errors[0].title);
            req.body['errors'] = body.errors;
            }
          }
          else {    // don't recognize it, just send it as is
            debugExec("more than one error in error list");
            req.body['errors'] = body.errors;
          }
        } 
        renderLogin(req, res);
      }
      else if (response.statusCode === 201) {
        debugExec("response was code %d", response.statusCode);
        if (body.loginSuccessful) {
          nextURL = '/labSessionsOverview';
          debugExec("redirecting to %s", nextURL);
          res.redirect(nextURL);
        }
        else {
          if (body.token === "NO_MATCHING_EMAIL_FOUND") {
            addSimpleErrorMsgToBody(req.body, "your email , " + req.body.email + ", was not found.", "Danger");
          }
          else if (body.token === "PASSWORD_DOES_NOT_MATCH") {
            addSimpleErrorMsgToBody(req.body, "Your password is incorrect.", "Danger");
          }
          
          renderLogin(req, res);
        }
      }
      else {
        debugExec("unrecognized error of status %d", response.statusCode);

        errorMsg = {};
        errorMsg['title'] = "ERROR: login post failed with a status of " + response.statusCode;
        errorMsg['level'] = "Danger";
        errorMsg['text']  = [];
        errorMsg['text'].push("There was a problem accessing the database");

        // send back a response that is reports the error.
        // don't know what kind of error is returned, so don't think there is already a list of errors in req.body.errors
        req.body['errors'] = [];
        req.body['errors'].push(errorMsg);
        renderLogin(req, res);
        //res.redirect('/labSessionsOverview');
      }
    }
  );
};

