<template>
<div>
  <div class="row">
    <div class="col-md-2">
      <h3>{{dayObj.the_date}}</h3>
    </div>
    <div class="col-md-2">
      <button v-on:click="goToEditInSitu()" class="btn btn-sm btn-info">Edit InSitu For This Day</button>
    </div>
    <div class="col-md-2">
      <button v-on:click="goToEditNutrient()" class="btn btn-sm btn-info">Edit Nutrient For This Day</button>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <WorkersForSession v-bind:workers="dayObj.workers"></WorkersForSession>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <SessionDayTable v-bind:samples="dayObj.samples"></SessionDayTable>
    </div>
  </div>
</div>
</template>

<script>
import SessionDayTable from './SessionDayTable.vue';
import WorkersForSession from './WorkersForSession.vue';
var errorMsgs = require('../util/errorMessages');

export default {
  props: ['dayObj', 'lab_id', 'session_number', 'lab_long_name'],
  methods: {

    goToEditInSitu: function (session){
      var params = {};
      params["lab_id"] = this.lab_id;
      params["session_number"] = this.session_number;
      params["lab_long_name"] = this.lab_long_name;
      params["the_date"] = this.dayObj.the_date;

      this.$router.push({name: 'editInSituSamplesOnDate', params: params});
    },

    goToEditNutrient: function (session){
      var errorMsgs = require('../util/errorMessages');
      errorMsgs.displayAndLogSimpleErrorMessage.call(this, "Edit Nutrient Data not implemented yet", 'warning');
      /*
      var params = {};
      params["lab_id"] = this.lab_id;
      params["session_number"] = this.session_number;
      params["lab_long_name"] = this.lab_long_name;
      params["the_date"] = this.dayObj.the_date;

      this.$router.push({name: 'editInSituSamplesOnDate', params: params});
      */
    }

  }, // end of methods
  components: {
    SessionDayTable,
    WorkersForSession
  }
}
</script>
