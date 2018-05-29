<template>
  <div>
    <div class="form-horizontal col-md-12 jumbotron">
      <fieldset>
        <legend>Create a Session for {{labInfo.lab_code}} ({{labInfo.long_name}})</legend>
        <div class="form-group">
          <label for="session_number" class="col-md-2 control-label">Session Number</label>
          <div class="col-md-2">
            <input type="text" name="session_number" v-model="newSessionNumber" class="form-control text-right">
          </div>
          <label for="session_number" class="col-md-3 float-left control-label">last session was {{labInfo.max_session_number}}</label>
        </div>
        <div class="form-group">
          <label for="start_date" class="col-md-2 control-label">Start Date</label>
          <div class="col-md-2">
            <input type="text" name="start_date" v-model="newSessionDay" class="form-control text-right">
          </div>
          <label for="start_date" class="col-md-4 control-label">Date of First Sample Day (YYYY-MM-DD)</label>
        </div>
        <div class="form-group">
          <div class="col-md-10 col-md-offset-2">
            <button v-if="! isSaving" v-on:click="validateInputsAndCreateSession()" class="btn btn-primary">Create Session for {{labInfo.lab_code}}</button>
            <button v-if="isSaving" class="btn btn-warning"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate"></span> Saving New Session for {{labInfo.lab_code}}...</button>

          </div>
        </div>
      </fieldset>
    </div>
  </div>
</template>



<script>
var errorMsgs = require('../util/errorMessages');

var lookupHelper = require('../util/lookupInformationHelper');

export default {
  data() {
    return {
      newSessionDay: this.todaysDate(),
      newSessionNumber: this.labInfo.max_session_number + 1,
      saving : false
    }
  },
  props: ['labInfo'],

  computed: {
    isSaving : function(){
      return this.saving;
    }
  },

  methods: {
    todaysDate: function() {
      return (new Date().toISOString().split('T')[0]);
    },

    sleep: function(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
    },

    saveComplete : function() {
      this.sleep(1000).then(() => {
        this.saving = false;
        this.goToLabSessionsOverview();
      });
      console.log("SAVE COMPLETE");
    },

    goToLabSessionsOverview: function (session){
      this.$router.push({name: 'labSessionsOverview'});
    },

    validateSessionNumber : function (callback) {
      var theMsg = null;
      console.log("in validateSessionNumber");
      if (! lookupHelper.isInt(this.newSessionNumber)) {
        theMsg = "\"Session Number\" must be an integer";
        this.$emit('add-error', errorMsgs.createSimpleErrorMsg(theMsg, "danger"));
      }
      else {
        if (callback) {
          callback(callback);
        }
      }
    },

    isSessionNumberInUseForLab : function (callback) {

      console.log("in isSessionNumberInUseForLab");

      var theMsg = null;
      var inUse = null;
      var msg = {
        method: 'get',
        url: '/api/isSessionNumberInUseForLab/' + this.labInfo.lab_id + "/" + this.newSessionNumber,
      };
      console.log("isSessionNumberInUseForLab ", msg);
      this.$http(msg)
        .then((response) => {
          inUse = response.data.isSessionNumberInUseForLab;
          console.log("inUse RESPONSE: ", inUse,  response.data,);
          if (inUse) {
            theMsg = "\"Session Number\" " + this.newSessionNumber + " is already be in use";
            this.$emit('add-error', errorMsgs.createSimpleErrorMsg(theMsg, "danger"));
          }
          else {
            if (callback) {
              callback();
            }
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });

    },

    validateDate : function (callback) {
      var theMsg = null;
      console.log("in validateDate");
      if ( ! lookupHelper.isDate(this.newSessionDay)) {
        console.log("DATE is not correct format");
        theMsg = "\"Start Date\" must be a valid date of the form YYYY-MM-DD";
        this.$emit('add-error', errorMsgs.createSimpleErrorMsg(theMsg, "danger"));
      }
      else {  // it was good, continue
        if (callback) {
          callback(callback);
        }
      }
    },

    validateInputsAndCreateSession: function () {

      this.$emit('reset-errors');

      var that = this;

      // if errors are found, the cascading does not continue.
      this.validateSessionNumber(function() {
        that.isSessionNumberInUseForLab(function() {
          that.validateDate(function() {
            that.createSession();
          });
        });
      });
    },

    createSession: function() {

      var theMsg = null;

      //console.log("in createSession");

      this.saving = true;

      var msg = {
        method: 'post',
        url: '/api/createNewSession',
        data: {
          'lab_id'           : this.labInfo.lab_id,
          'session_number'   : this.newSessionNumber,
          'first_sample_day' : this.newSessionDay,
        }
      };
      console.log("CREATE SESSION MSG ", msg);
      this.$http(msg)
        .then((response) => {
          this.saveComplete();
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
          this.saving = false;  // don't want a spinning saving icon
        });
    },
  }, // end of methods
  created() {
  }
}
</script>
