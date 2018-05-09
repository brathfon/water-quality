<template>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h3>Lab Sessions</h3>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <a href="/createNewSession" class=
        "btn btn-sm btn-info">Add Session</a>
      </div>
      <div class="col-md-6">
        <lab-filter></lab-filter>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th>Lab Code</th>
              <th>Lab Name</th>
              <th class="center-align-table-cell">Session
              Number</th>
              <th class="center-align-table-cell">Start Date</th>
              <th class="center-align-table-cell">get
              Details</th>
            </tr>
          </thead>
          <tbody>

            <tr v-for="session in filteredLabSessions">
              <td>{{session.lab_code}}</td>
              <td>{{session.long_name}}</td>
              <td class="center-align-table-cell">{{session.session_number}}</td>
              <td class="center-align-table-cell">{{dateOnly(session.start_date)}}</td>
              <td class="center-align-table-cell">
                <a v-bind:href="createURL(session)"
                class="btn btn-sm btn-info">View Site Samples</a>
              </td>
            </tr>

          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import LabFilter from "./LabFilter.vue";
var errorMsgs = require('../util/errorMessages');

export default {
  data() {
    return {  labSessions : []
    }
  },
  components: {
    LabFilter
  },
  computed: {
    filteredLabSessions : function () {
      return this.labSessions.filter(this.passesLabFilter);
    }
  },
  methods: {
    passesLabFilter: function(labSession){
      if (this.$store.state.userChoices.labSessionFilterChoice === "All") {
        return true;
      }
      else {
        return (labSession.short_name === this.$store.state.userChoices.labSessionFilterChoice);
      }
    },
    createURL: function(session) {
      return "/#/samplesForSession/" + session.lab_id + "/" + session.session_number + "/" + session.long_name;
    },
    dateOnly: function(dateAndTime){
      return dateAndTime.split('T')[0];
    },
    getLabSessions: function() {

      var msg = {
        method: 'get',
        url: '/api/getLabSessionsOverview',
        data: {}
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.labSessions ){
            this.labSessions = response.data.labSessions;
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    }
  },
  created() {
    console.log("CHOICE: ", this.$store.state.userChoices.labSessionFilterChoice);
    this.getLabSessions();
  }
}
</script>
