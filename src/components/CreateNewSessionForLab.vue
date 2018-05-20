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
            <button v-on:click="createSession()" class="btn btn-primary">Create Session for {{labInfo.lab_code}}</button>
          </div>
        </div>
      </fieldset>
    </div>
  </div>
</template>



<script>
var errorMsgs = require('../util/errorMessages');


export default {
  data() {
    return {
      newSessionDay: this.todaysDate(),
      newSessionNumber: this.labInfo.max_session_number + 1
    }
  },
  props: ['labInfo'],

  methods: {
    todaysDate: function() {
      return (new Date().toISOString().split('T')[0]);
    },

    goToLabSessionsOverview: function (session){
      this.$router.push({name: 'labSessionsOverview'});
    },

    createSession: function() {
      console.log("CREATE SESSION");
      var msg = {
        method: 'post',
        url: '/api/createNewSession',
        data: {
          'lab_id'           : this.labInfo.lab_id,
          'session_number'   : this.newSessionNumber,
          'first_sample_day' : this.newSessionDay,
        }
      }
      console.log("CREATE SESSION MSG ", msg);
      this.$http(msg)
        .then((response) => {
          this.goToLabSessionsOverview();
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },
  }, // end of methods
  created() {
  }
}
</script>
