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

var newIsFloat = function(value) {
  var floatValues =  /^[+-]?([0-9]*[.])?[0-9]+$/;
  return (value.match(floatValues) === null) ? false : true;
};

var isFloat = function(value) {
  var val = parseFloat(value);
  return (! isNaN(val));
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
      returnValue = false
    }
    return returnValue;
  }
};

export {
  getPrecisionForMeasurement,
  setPrecision,
  formatSampleTime,
  isFloat,
  hasTooManySigFigs,
  newIsFloat
};
