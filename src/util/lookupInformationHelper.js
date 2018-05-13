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
  if ((theSample !== null) && (theSample !== undefined)) {
    newSample = theSample.toFixed(numSigFigs);
  } else {
    newSample = "";
  }
  return newSample;
};

var setPrecision = function(attribute, value) {
  return formatSampleWithSigFigs(value, getPrecisionForMeasurement.call(this, attribute));
};

export {
  getPrecisionForMeasurement,
  setPrecision,
  formatSampleTime
};
