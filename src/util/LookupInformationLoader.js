var errorMsgs = require('./errorMessages');

var getLabs = function() {
  var errorMsgText;
  var errorMsgObj;
  var i;
  var msg = {
    method: 'get',
    url: '/api/getLabs',
    data: {}
  }

  this.$http(msg)
    .then((response) => {
      //console.log("RESPONSE ", response.data.labs);
      this.$store.commit('lookupInfo/updateLabs', response.data.labs);
    })
    .catch((error) => {
      errorMsgs.handleHttpErrors.call(this, error);
    });
};

/* this information comes back as a list of objects.  Would like just an object with each
measurement name and attribute and its precision the value.
in:
"measurement_precision": [
  {
      "measurement_name": "temperature",
      "number_of_decimals": 1
  },
  {
      "measurement_name": "salinity",
      "number_of_decimals": 1
  },.....
  want:
  {"temperature": 1, "salinity": 1,..... }
  */

var getMeasurementPrecision = function() {
  var errorMsgText;
  var errorMsgObj;
  var i;
  var msg = {
    method: 'get',
    url: '/api/getMeasurementPrecision',
    data: {}
  }

  this.$http(msg)
    .then((response) => {
      var obj = {};
      var i;
      for (i = 0; i < response.data.measurement_precision.length; ++i) {
        obj[response.data.measurement_precision[i].measurement_name] = response.data.measurement_precision[i].number_of_decimals;
      }
      //console.log("OBJ IN GET", obj);
      this.$store.commit('lookupInfo/updateMeasurementPrecision', obj);
    })
    .catch((error) => {
      errorMsgs.handleHttpErrors.call(this, error);
    });
};


var loadLookupInformation = function() {
  console.log("Starting loading of lookup information");
  getLabs.call(this);
  getMeasurementPrecision.call(this);
  console.log("Done loading of lookup information");
};

export {
  loadLookupInformation
}
