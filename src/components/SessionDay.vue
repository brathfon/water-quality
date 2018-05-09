<template>
<div class="row">
  <div class="col-md-2">
    <h3>{{dayObj.date}}</h3>
  </div>
  <div class="col-md-4">
    <a v-bind:href="createURL()" class="btn btn-sm btn-info">Edit This Day</a>
  </div>
</div>
</template>

<script>
export default {
  props: ['dayObj', 'lab_id', 'session_number', 'lab_long_name'],
  methods: {
    createURL: function(date) {
      //return "/#/samplesForSession/" + session.lab_id + "/" + session.session_number + "/" + session.long_name + "/" + dayObj.date;
      return "/#/editSamplesOnDate/" + this.lab_id + "/" + this.session_number + "/" + this.lab_long_name + "/" + this.dayObj.date;
    }
  } // end of methods
}
</script>
