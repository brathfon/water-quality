<template>
<div class="container wq-container">

  <div class="row">
    <div class="col-md-offset-3 col-md-6">
      <error-alerts v-if="haveErrors"
                    v-bind:errors="entryErrors"
                    v-on:reset-error="resetError"></error-alerts>
    </div>
  </div>


  <div class="row">
    <div class="col-lg-8">
      <h3>Edit day {{the_date}} (session {{session_number}}, {{lab_long_name}})</h3>
    </div>
    <div class="col-lg-4 wq-edit-choices">
      <fieldset class="form-group">
          <div class="form-check">
            <label class="form-check-label">
              <input  v-on:click="toggleEditDates" v-model="editDates" value="editDates" type="radio" class="form-check-input" name="editDates">
              Edit Dates *
          </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
            <input v-on:click="toggleEditComments" v-model="editComments" value="editComments" type="radio" class="form-check-input"  name="editComments">
            Edit Comments
        </label>
      </div>
      </fieldset>
    </div>
  </div>

  <div class="row">
    <div class="col-lg-12">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Location</th>
              <th v-if="doEditDates()" class="in-situ-header-cell">Date</th>
              <th class="in-situ-header-cell">Time</th>
              <th class="in-situ-header-cell">Temp</th>
              <th class="in-situ-header-cell">Sal</th>
              <th class="in-situ-header-cell">DO</th>
              <th class="in-situ-header-cell">DO Sat</th>
              <th class="in-situ-header-cell">pH</th>
              <th class="in-situ-header-cell"></th>
              <th class="in-situ-header-cell">Turbidity (NTU)
              </th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          <thead>
            <tr>
              <th></th>
              <th v-if="doEditDates()"></th>
              <th class="in-situ-header-cell"></th>
              <th class="in-situ-header-cell">(C)</th>
              <th class="in-situ-header-cell">(ppt)</th>
              <th class="in-situ-header-cell">(mg/L)</th>
              <th class="in-situ-header-cell">(%)</th>
              <th class="in-situ-header-cell"></th>
              <th class="in-situ-header-cell">1</th>
              <th class="in-situ-header-cell">2</th>
              <th class="in-situ-header-cell">3</th>
              <th class="in-situ-header-cell">Comments</th>
            </tr>
          </thead>
          <tbody>
            <template v-for="(sample, index) in samples">
              <tr v-bind:class="stripeColor(index)">
                <td class="location-cell">
                  <table class="in-situ-location-table">
                    <tr>
                      <td>{{sample.long_name}}</td>
                    </tr>
                    <tr>
                      <td>{{huiAbvDateCode(sample.hui_abv, sample.the_date)}}</td>
                    </tr>
                  </table>
                </td>
                <td v-if="doEditDates()" class="date-input"><input v-bind:class="alertLevel(index, 'the_date')" type="text" autocomplete="off" v-model="samples[index].the_date" class="insitu-input" ></td>
                <td><input v-bind:class="alertLevel(index, 'the_time')" type="text" autocomplete="off" v-model="samples[index].the_time" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'temperature')" type="text" autocomplete="off" v-model="samples[index].temperature" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'salinity')" type="text" autocomplete="off" v-model="samples[index].salinity" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'dissolved_oxygen')" type="text" autocomplete="off" v-model="samples[index].dissolved_oxygen" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'dissolved_oxygen_pct')" type="text" autocomplete="off" v-model="samples[index].dissolved_oxygen_pct" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'ph')" type="text" autocomplete="off" v-model="samples[index].ph" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'turbidity_1')" type="text" autocomplete="off" v-model="samples[index].turbidity_1" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'turbidity_2')" type="text" autocomplete="off" v-model="samples[index].turbidity_2" class="insitu-input"></td>
                <td><input v-bind:class="alertLevel(index, 'turbidity_3')" type="text" autocomplete="off" v-model="samples[index].turbidity_3" class="insitu-input"></td>
                <td class="in-situ-table-cell">{{commentsSubStr(samples[index].comments)}}</td>
              </tr>
              <tr v-if="doEditComments()" v-bind:class="stripeColor(index)">
                <td><b>{{sample.hui_abv}} comments:</b></td>
                <td colspan="12"><input v-bind:class="alertLevel(index, 'turbidity_3')" type="text" autocomplete="off" v-model="samples[index].comments" class="insitu-input"></td>
              </tr>

          </template>

          </tbody>
        </table>
        <button v-on:click="doUpdate" class="btn btn-primary">Update</button>
        <button v-if="isUpdating" class="btn btn-warning"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate"></span> Updating...</button>
    </div>
  </div>

  <div class="row user-notes-section">
    <div class="col-lg-12">
      <p>
        * Editing the date would be unusual unless when creating a new session the original start date was incorrect, etc.
      </p>
    </div>
  </div>
</div>
</template>

<script>
var errorMsgs = require('../util/errorMessages');
var lookupHelper = require('../util/lookupInformationHelper');
var presHelper = require('../util/dataPresentationHelper');

import MeasurementInputField from './MeasurementInputField.vue';
import ErrorAlerts from './ErrorAlerts.vue';



export default {
  data() {
    return {
      lab_id: -1,
      session_number: -1,
      lab_long_name: "",
      samples: [],
      the_date: "",
      entryErrors: [],  // list of entry errors
      alerts: [],       // list of samples that have an issue but not corrected
      updating: false,
      editDates: null,  // these independent buttons seem to toggle between null and "value"
      editComments: null
    }
  },

  components: {
    MeasurementInputField, ErrorAlerts
  },

  computed: {
    haveErrors : function() {
      return this.entryErrors.length > 0;
    },
    isUpdating : function() {
      return this.updating
    }
  },  // end of computed

  methods: {

    huiAbvDateCode: function (hui_abv, the_date) {
      return presHelper.createHuiAbvDateCode(hui_abv, the_date);
    },

    toggleEditDates: function () {
      this.editDates ? this.editDates = null : this.editDates = "editDates";
    },

    doEditDates: function () {
      return this.editDates === "editDates";
    },

    doEditComments: function () {
      return this.editComments === "editComments";
    },

    toggleEditComments: function () {
      this.editComments ? this.editComments = null : this.editComments = "editComments";
    },

    stripeColor: function(index) {
      return presHelper.stripeColor(index);
    },

    alertLevel : function(index, attribute) {
      return this.alerts[index][attribute].alertClass;
    },

    commentsSubStr : function (comments) {
      return lookupHelper.formatCommentsSubstring(comments);
    },

    // this was cool but it is blocking the "update button" when there is invalid data
    // was added by <input v-on:blur="onBlur(index, 'temperature')"
    onBlur: function(index, attribute) {
      return;

      var precision = 1;
      console.log("WAS BLURRED attribute: " + attribute + " index: " + index + " precision " + precision );
      if (attribute === "the_time") {
        this.validateTime(index, attribute);
      }
      else {
        this.validateSample(index, attribute);
      }
    },

    resetError : function(id) {
      this.entryErrors.splice(id, 1);
    },

    // resets all errors by assigning an empty array
    resetErrors : function() {
      this.entryErrors = [];
    },

    sleep: function(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
    },

    updateComplete : function() {
      this.getSamplesForSession();  // reload from database
      this.sleep(1000).then(() => {
        this.updating = false;
        console.log("UPDATE COMPLETE");
      });
    },

    updateOneSample: function(index){

      this.$http.put('/api/updateOneSample/', this.samples[index])
        .then((response) => {
          //console.log("INITIAL response ->  for " + index, response);
          if (index > 0) { // continue the recursion
            this.updateOneSample(--index);
          }
          else {
            this.updateComplete();
          }
        })
        .catch((error) => {
          //console.log("ERROR updating -> ", this.samples[index].long_name);
          errorMsgs.handleHttpErrors.call(this, error);
          if (index > 0) { // continue the recursion
            this.updateOneSample(--index);
          }
          else {
            this.updateComplete();
          }
        });
      },

    doUpdate: function() {
      var i;

      //e.preventDefault();
      console.log("DO UPDATE");

      this.resetErrors();  // don't want to see old errors
      this.initializeAlerts();

      if ( ! this.validateSamples()) {
        console.log("UPDATE CANCELLED");
        return;
      }
      this.updating = true;

      this.updateOneSample(this.samples.length - 1);
    },


    addEntryError: function(index, attribute, msg) {
      if (this.alerts[index][attribute].entryErrorId < 0){  // there is no error now, so display it
        this.entryErrors.push(errorMsgs.createSimpleErrorMsg(msg, "danger"));
        this.alerts[index][attribute].entryErrorId = this.entryErrors.length - 1;
      }
    },

    resetErrorAndAlert : function(index, attribute) {
      // its good, so un-highlight the box
      if (this.alerts[index][attribute].alertClass !== ""){
        this.alerts[index][attribute].alertClass = "";
      }
      // if the alert box is still displayed above, close it
      if (this.alerts[index][attribute].entryErrorId >= 0){
        this.resetError(this.alerts[index][attribute].entryErrorId);
        this.alerts[index][attribute].entryErrorId = -1;
      }
    },

    validateTime : function(index, attribute) {
      var isGood = true;

      var value = this.samples[index][attribute];

      if (value === "") {  // no need to validate blanks
        return true;
      }
      //console.log("VALUE TO VALIDATE ", value);

      if (! lookupHelper.isHourMinute(value)) {
        this.addEntryError(index, attribute, attribute + " for " + this.samples[index].long_name + " must be \"HH:MM\", 00-23 hours");
        isGood = false;
      }

      if (! isGood) {
        this.alerts[index][attribute].alertClass = "validation-error";
      } else {  // its good, so un-highlight the box and close alert box, if open
        this.resetErrorAndAlert(index, attribute);
      }
      return isGood;
    },

    validateDate : function(index, attribute) {
      var isGood = true;

      var value = this.samples[index][attribute];

      //console.log("DATE VALUE TO VALIDATE ", value);

      if (! lookupHelper.isDate(value)) {
        this.addEntryError(index, attribute, attribute + " for " + this.samples[index].long_name + " must be \"YYY-MM-DD\"");
        isGood = false;
      }

      if (! isGood) {
        this.alerts[index][attribute].alertClass = "validation-error";
      } else {  // its good, so un-highlight the box and close alert box, if open
        this.resetErrorAndAlert(index, attribute);
      }
      return isGood;
    },

    validateComments : function(index, attribute) {
      var isGood = true;

      var value = this.samples[index][attribute];

      if (value === "" || value === null) {  // no need to validate blanks
        return true;
      }

      console.log("COMMENT VALUE TO VALIDATE ", value);

      if (value.length > 1024) {
        this.addEntryError(index, attribute, "A little too verbose: " + attribute + " for " + this.samples[index].long_name + " must be less than 1024 characters");
        isGood = false;
      }

      if (! isGood) {
        this.alerts[index][attribute].alertClass = "validation-error";
      } else {  // its good, so un-highlight the box and close alert box, if open
        this.resetErrorAndAlert(index, attribute);
      }
      return isGood;
    },


    validateSample : function(index, attribute) {
      var isGood = true;
      var numSigFigs = null;

      var value = this.samples[index][attribute];

      if (value === "") {  // no need to validate blanks
        return true;
      }
      //console.log("VALUE TO VALIDATE ", value);

      if (! lookupHelper.isFloat(value)) {
        this.addEntryError(index, attribute, attribute + " for " + this.samples[index].long_name + " must be a number");
        isGood = false;
      }
      if (lookupHelper.hasTooManySigFigs.call(this, attribute, value)) {
        numSigFigs = lookupHelper.getPrecisionForMeasurement.call(this, attribute);
        this.addEntryError(index, attribute, attribute + " for " + this.samples[index].long_name + " can have at most " + numSigFigs + " significate digit(s)");
        isGood = false;
      }
      if (! isGood) {
        this.alerts[index][attribute].alertClass = "validation-error";
      } else {  // its good, so un-highlight the box and close alert box, if open
        this.resetErrorAndAlert(index, attribute);
        this.samples[index][attribute] = lookupHelper.setPrecision.call(this, attribute, this.samples[index][attribute]);
      }
      return isGood;
    },

    validateSamples : function() {

      var i;
      var sample = null;
      var allGood = true;

      for (i = 0; i < this.samples.length; ++i) {
        allGood &= this.validateDate(i, "the_date");
        allGood &= this.validateTime(i, "the_time");
        allGood &= this.validateSample(i, "temperature");
        allGood &= this.validateSample(i, "salinity");
        allGood &= this.validateSample(i, "dissolved_oxygen");
        allGood &= this.validateSample(i, "dissolved_oxygen_pct");
        allGood &= this.validateSample(i, "ph");
        allGood &= this.validateSample(i, "turbidity_1");
        allGood &= this.validateSample(i, "turbidity_2");
        allGood &= this.validateSample(i, "turbidity_3");
        allGood &= this.validateComments(i, "comments");
      }
      console.log("All GOOD ", allGood);
      return allGood;
    },

    // There is an array of objects, one for each site and sample type
    // that contains a class for changing the color of the cell for the_date
    // sample and an index into the array of entryErrors.  If the user dismisses
    // the alert but doesn't fix the value, it remains highlighted.  If the
    // user fixes the value and doesn't explicitly close the alert, the
    // alert will go away, too.
    initializeAlerts: function() {
      var i;
      var obj = null;
      var sample = null;
      var sampleAttribute;
      this.alerts = [];
      for (i = 0; i < this.samples.length; ++i){
        sample = this.samples[i];
        obj = {};
        for (sampleAttribute in sample){
          obj[sampleAttribute] = {};
          obj[sampleAttribute]['alertClass'] = "";
          obj[sampleAttribute]['entryErrorId'] = -1;  // index into entry errors
        }
        this.alerts.push(obj);
      }

    },

    formatData: function() {
      var i;
      var sample = null;
      for (i = 0; i < this.samples.length; ++i) {
        sample = this.samples[i];
        sample.the_time             = lookupHelper.formatSampleTime(sample.the_time);
        sample.temperature          = lookupHelper.setPrecision.call(this, "temperature",          sample.temperature);
        sample.salinity             = lookupHelper.setPrecision.call(this, "salinity",             sample.salinity);
        sample.dissolved_oxygen     = lookupHelper.setPrecision.call(this, "dissolved_oxygen",     sample.dissolved_oxygen);
        sample.dissolved_oxygen_pct = lookupHelper.setPrecision.call(this, "dissolved_oxygen_pct", sample.dissolved_oxygen_pct);
        sample.ph                   = lookupHelper.setPrecision.call(this, "ph",                   sample.ph);
        sample.turbidity_1          = lookupHelper.setPrecision.call(this, "turbidity_1",          sample.turbidity_1);
        sample.turbidity_2          = lookupHelper.setPrecision.call(this, "turbidity_2",          sample.turbidity_2);
        sample.turbidity_3          = lookupHelper.setPrecision.call(this, "turbidity_3",          sample.turbidity_3);
      }
    },

    getSamplesForSession: function(callback) {
      var msg = {
        method: 'get',
        url: '/api/getInSituSamplesForSessionOnDate/' + this.lab_id + '/' + this.session_number + '/' + this.the_date
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.samples) {
            console.log("FINISHED GETTING SAMPLES");
            this.samples = response.data.samples;
            this.formatData();
            this.initializeAlerts();
            if (callback) {
              callback();
            }
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },
  },

  created() {
    this.lab_id = this.$route.params.lab_id;
    this.session_number = this.$route.params.session_number;
    this.lab_long_name = this.$route.params.lab_long_name;
    this.the_date = this.$route.params.the_date;
    this.getSamplesForSession();
  }
}
</script>
