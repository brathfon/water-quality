
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
  }

var loadLookupInformation = function() {
  getLabs.call(this);
};

export {
  loadLookupInformation
}
