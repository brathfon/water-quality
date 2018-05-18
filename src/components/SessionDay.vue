<template>
<div>
  <div class="row">
    <div class="col-md-2">
      <h3>{{dayObj.date}}</h3>
    </div>
    <div class="col-md-2">
      <a v-bind:href="createInSituURL()" class="btn btn-sm btn-info">Edit InSitu For This Day</a>
    </div>
    <div class="col-md-2">
      <a v-bind:href="createNutrientURL()" class="btn btn-sm btn-info">Edit Nutrient For This Day</a>
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


export default {
  props: ['dayObj', 'lab_id', 'session_number', 'lab_long_name'],
  methods: {
    createInSituURL: function(date) {
      return "/#/editInSituSamplesOnDate/" + this.lab_id + "/" + this.session_number + "/" + this.lab_long_name + "/" + this.dayObj.date;
    },
    createNutrientURL: function(date) {
      return "/#/editNutrientSamplesOnDate/" + this.lab_id + "/" + this.session_number + "/" + this.lab_long_name + "/" + this.dayObj.date;
    }
  }, // end of methods
  components: {
    SessionDayTable,
    WorkersForSession
  }
}
</script>
