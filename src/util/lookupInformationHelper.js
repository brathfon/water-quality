var errorMsgs = require('./errorMessages');


var getPrecisionForMeasurement = function(measurementName) {
  var msg = "";
  if (this.$store.state.lookupInfo.measurementPrecision[measurementName]){
    return this.$store.state.lookupInfo.measurementPrecision[measurementName];
  }
  else {
    msg = "Unable to look up precision for " + measurementName + ". Returning 1.";
    errorMsgs.displayAndLogSimpleErrorMessage.call(this, msg, "danger");
    return 1;
  }
};

var formatSampleTime = function(theTime) {
  var newTime = "";
  if ((theTime !== null) && (theTime !== undefined)) {
    newTime = theTime.slice(0, 5);
  } else {
    newTime = "";
  }
  return newTime;
};

var formatCommentsSubstring = function (comments) {

  var substr = comments;
  if (comments != null) {
    if (comments.length > 32) {
      substr = comments.substring(0,28) + " ...";
    }
    else {
      substr = comments;
    }
  }
  return substr;
};

var formatSampleWithSigFigs = function(theSample, numSigFigs) {

  var newSample = "";
  if ((theSample !== null) && (theSample !== undefined) && theSample !== "") {
    //newSample = parseFloat(parseFloat(theSample).toFixed(numSigFigs));
    newSample = parseFloat(theSample).toFixed(numSigFigs);
  } else {
    newSample = "";
  }
  return newSample;
};

var setPrecision = function(attribute, value) {
  return formatSampleWithSigFigs(value, getPrecisionForMeasurement.call(this, attribute));
};

var isFloat = function(value) {
  var floatValues =  /^[+-]?([0-9]*[.])?[0-9]+$/;
  return (value.match(floatValues) === null) ? false : true;
};


// valid HH:MM time, 24 hour clock

var isHourMinute = function(value) {

  if (value.match(/^[0-1][0-9]:[0-5][0-9]$/) != null) {
    return true;
  }
  if (value.match(/^[2][0-3]:[0-5][0-9]$/) != null) {
    return true;
  }
  return false;
};

function isLeapYear(yr)
{
  return ((yr % 4 == 0) && (yr % 100 != 0)) || (yr % 400 == 0);
};

// valid date, YYYY-MM-DD
var isDate = function(value) {
  var testTime = null;
  var dateParts = null;
  var year = null;
  var month = null;
  var day = null;
  // first make sure it is the basic form YYYY-MM-DD
  if (value.match(/^[1-2][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9]$/) != null) {
    //console.log("general form is OK");

    dateParts = value.split("-");
    year = parseInt(dateParts[0]);
    month = parseInt(dateParts[1]);
    day = parseInt(dateParts[2]);

    if ((month < 1) || (month > 12)) {
      return false;
    }

    if (month == 2) {  // ah, February
      if (isLeapYear(year)){
        if ((day >= 1) && (day <= 29)) {
          return true;
        }
      } else {
        if ((day >= 1) && (day <= 28)) {
          return true;
        }
      }

    }
    else if ((month == 9) || (month == 4) || (month == 6) || (month == 11)) {
      if ((day >= 1) && (day <= 30)) {
        return true;
      }
    }
    else {
      if ((day >= 1) && (day <= 31 )) {
        return true;
      }
    }
  }  // end of basic match
  //console.log("something is BAD");

  return false;
};

var isInt = function(value) {
    // now check to see if this parses to an int
  var testInt = parseInt(value);
    //console.log("testInt ", value, testInt, typeof value);
    return (! isNaN(testInt));
};

var hasTooManySigFigs = function(attribute, value){
  var returnValue = false;
  var fractionalPart = null;

  if (value.indexOf(".") < 0){
    returnValue = false;  // no decimal points, so nothing to check
  }
  else{
    fractionalPart = value.split(".")[1];
    if (fractionalPart.length > getPrecisionForMeasurement.call(this, attribute)) {
      returnValue = true;
    }
    else{
      returnValue = false;
    }
  }
  return returnValue;

};

export {
  getPrecisionForMeasurement,
  setPrecision,
  formatSampleTime,
  formatCommentsSubstring,
  isFloat,
  isInt,
  hasTooManySigFigs,
  isHourMinute,
  isDate  
};
