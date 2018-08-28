var errorMsgs = require('./errorMessages');

var getLabObj = function(lab_id) {
  var returnValue = null;
  let matches = this.$store.state.lookupInfo.labs.filter((lab) => lab.lab_id === lab_id);
  //console.log(`matches length: ${matches.length}`);
  if (matches.length !== 1) {
    let msg = `Did not find single matching lab for lab_id ${lab_id}`;
    errorMsgs.displayAndLogSimpleErrorMessage.call(this, msg, "danger");
  }
  else {
    returnValue = matches[0];
    //returnValue =  "Hi";
  }
  return returnValue;
};

var getLabLongName = function(lab_id) {

  let matchingLabObj = getLabObj.call(this, lab_id);
  var returnValue = `lab for lab_id ${lab_id} not found`;
  if (matchingLabObj) {
    returnValue = matchingLabObj.long_name;
  }
  return returnValue;
};

var getLabShortName = function(lab_id) {

  let matchingLabObj = getLabObj.call(this, lab_id);
  var returnValue = `lab for lab_id ${lab_id} not found`;
  if (matchingLabObj) {
    returnValue = matchingLabObj.short_name;
  }
  return returnValue;
};

var getLabCode = function(lab_id) {

  let matchingLabObj = getLabObj.call(this, lab_id);
  var returnValue = `lab for lab_id ${lab_id} not found`;
  if (matchingLabObj) {
    returnValue = matchingLabObj.lab_code;
  }
  return returnValue;
};

export {
  getLabLongName,
  getLabShortName,
  getLabCode
}
