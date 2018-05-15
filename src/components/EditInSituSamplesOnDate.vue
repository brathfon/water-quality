<template>
<div class="container">

  <div class="row">
    <div class="col-md-offset-3 col-md-6">
      <error-alerts v-if="haveErrors" v-bind:errors="entryErrors" v-on:reset-error="resetError"></error-alerts>
    </div>
  </div>


  <div class="row">
    <div class="col-lg-12">
      <h3>Edit day {{the_date}} (session {{session_number}}, {{lab_long_name}})</h3>
    </div>
  </div>

  <div class="row">
    <div class="col-lg-12">
      <form v-bind:action="backToHereURL()" method="get" role="form" class="col-lg-12">
        <input type="hidden" name="labId" value="1"><input type="hidden" name="sessionNumber" value="28"><input type="hidden" name="labLongName" value="Lahainaluna High School"><input type="hidden" name="theDate" value="2017-10-03">
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th>Location Name</th>
              <th>Location Code</th>
              <th class="in-situ-header-cell">Time</th>
              <th class="in-situ-header-cell">Temp</th>
              <th class="in-situ-header-cell">Sal</th>
              <th class="in-situ-header-cell">DO</th>
              <th class="in-situ-header-cell">DO Sat</th>
              <th class="in-situ-header-cell">pH</th>
              <th class="in-situ-header-cell"></th>
              <th class="in-situ-header-cell">Turbidity (NTU)
              </th>
              <th class="in-situ-header-cell"></th>
            </tr>
          </thead>
          <thead>
            <tr>
              <th></th>
              <th></th>
              <th class="in-situ-header-cell"></th>
              <th class="in-situ-header-cell">(C)</th>
              <th class="in-situ-header-cell">(ppt)</th>
              <th class="in-situ-header-cell">(mg/L)</th>
              <th class="in-situ-header-cell">(%)</th>
              <th class="in-situ-header-cell"></th>
              <th class="in-situ-header-cell">1</th>
              <th class="in-situ-header-cell">2</th>
              <th class="in-situ-header-cell">3</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(sample, index) in samples">
              <td>{{sample.long_name}}</td>
              <td>{{sample.hui_abv}}</td>
              <td><input v-on:blur="onBlur('time', index)" type="text" autocomplete="off" v-model="samples[index].time" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('temperature', index)" type="text" autocomplete="off" v-model="samples[index].temperature" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('salinity', index)" type="text" autocomplete="off" v-model="samples[index].salinity" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('dissolved_oxygen', index)" type="text" autocomplete="off" v-model="samples[index].dissolved_oxygen" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('dissolved_oxygen_pct', index)" type="text" autocomplete="off" v-model="samples[index].dissolved_oxygen_pct" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('ph', index)" type="text" autocomplete="off" v-model="samples[index].ph" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('turbidity_1', index)" type="text" autocomplete="off" v-model="samples[index].turbidity_1" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('turbidity_2', index)" type="text" autocomplete="off" v-model="samples[index].turbidity_2" class="form-control wq-input"></td>
              <td><input v-on:blur="onBlur('turbidity_3', index)" type="text" autocomplete="off" v-model="samples[index].turbidity_3" class="form-control wq-input"></td>
            </tr>

          </tbody>
        </table>
        <button v-on:click="doUpdate" type="submit" class="btn btn-primary">Update</button>
        <button v-if="isUpdating" class="btn btn-warning"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate"></span> Updating...</button>
      </form>
    </div>
  </div>
</div>
</template>

<script>
var errorMsgs = require('../util/errorMessages');
var lookupHelper = require('../util/lookupInformationHelper');

import MeasurementInputField from './MeasurementInputField.vue';
import ErrorAlerts from './ErrorAlerts.vue';


export default {
  data() {
    return {
      lab_id: -1,
      session_number: -1,
      lab_long_name: "",
      samples: {},
      the_date: "",
      entryErrors: [],
      updating: false
    }
  },

  components: {ErrorAlerts},

  computed: {
    haveErrors : function() {
      return this.entryErrors.length > 0;
    },
    isUpdating : function() {
      return this.updating
    }
  },  // end of computed

  methods: {

    onBlur: function(attribute, index) {
      var precision = 1;
      precision = lookupHelper.getPrecisionForMeasurement.call(this, attribute);
      console.log("WAS BLURRED attribute: " + attribute + " index: " + index + " precision " + precision );
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
      this.sleep(1000).then(() => {
        this.updating = false;
      });
      console.log("UPDATE COMPLETE");
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

    doUpdate: function(e) {
      var i;
      
      e.preventDefault();

      this.resetErrors();  // don't want to see old errors

      if ( ! this.validateSamples()) {
        console.log("UPDATE CANCELLED");
        return;
      }
      this.updating = true;

      this.updateOneSample(this.samples.length - 1);
    },

    backToHereURL: function(date) {
      return "/#/editInSituSamplesOnDate/" + this.lab_id + "/" + this.session_number + "/" + this.lab_long_name + "/" + this.the_date;
    },

    validateSample : function(index, attribute) {
      var isGood = true;
      var value = this.samples[index][attribute];
      if (! lookupHelper.isFloat(value)) {
        this.entryErrors.push(errorMsgs.createSimpleErrorMsg(attribute + " for " + this.samples[index].long_name + " must be a number", "danger"));
        isGood = false;
      }
      return isGood;
    },

    validateSamples : function() {

      var i;
      var sample = null;
      var allGood = true;

      for (i = 0; i < this.samples.length; ++i) {
        sample = this.samples[i];
        //sample.time                 = lookupHelper.formatSampleTime(sample.time);
        allGood &= this.validateSample(i, "temperature");
        allGood &= this.validateSample(i, "salinity");
        allGood &= this.validateSample(i, "dissolved_oxygen");
        allGood &= this.validateSample(i, "dissolved_oxygen_pct");
        allGood &= this.validateSample(i, "ph");
        allGood &= this.validateSample(i, "turbidity_1");
        allGood &= this.validateSample(i, "turbidity_2");
        allGood &= this.validateSample(i, "turbidity_3");
      }
      console.log("All GOOD ", allGood);
      return allGood;
    },

    formatData: function() {
      var i;
      var sample = null;
      for (i = 0; i < this.samples.length; ++i) {
        sample = this.samples[i];
        sample.time                 = lookupHelper.formatSampleTime(sample.time);
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

    getSamplesForSession: function() {
      var msg = {
        method: 'get',
        url: '/api/getInSituSamplesForSessionOnDate/' + this.lab_id + '/' + this.session_number + '/' + this.the_date
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.samples) {
            this.samples = response.data.samples;
            this.formatData();
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    }
  },
  components: {
    MeasurementInputField, ErrorAlerts
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
