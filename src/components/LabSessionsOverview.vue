<template>
  <div class="container wq-container">
    <div class="row">
      <div class="col-lg-12">
        <h3>Lab Sessions</h3>
      </div>
    </div>

   <!-- this only displays if the user decides to delete a session -->
    <div v-if="showDeleteModal" class="row">
      <div class="col-lg-12">
        <transition name="modal">
          <div class="modal modal-mask" style="display: block">
                  <div class="modal-dialog" >
                    <div class="modal-content">
                      <div class="modal-header">
                        <button v-on:click="doCancelDelete" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Delete Session {{sessionToDelete.session_number}}, Lab {{sessionToDelete.lab_code}}</h4>
                      </div>
                      <div class="modal-body">
                        <p>WARNING: this will delete all samples associated with this session.
                          You should only be deleting a session if you created a session in error. For example, you
                          created a session on the wrong start date, but have not entered the field data yet.
                        </p>
                      </div>
                      <div class="modal-footer">
                        <button v-on:click="doCancelDelete" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button v-on:click="doConfirmDelete" type="button" class="btn btn-primary">Delete Session</button>
                      </div>
                    </div>
                  </div>
            </div>
        </transition>
      </div>
    </div>


    <div class="row">
      <div class="col-xs-4">
        <button v-on:click="goToCreateNewSession()" class="btn btn-sm btn-info">Add Session</button>
      </div>
      <div class="col-xs-4">
        <lab-filter></lab-filter>
      </div>

      <div class="col-xs-4">
        <div class="form-check">
          <label class="form-check-label">
            <input  v-on:click="toggleDeleteSessionButton"
                    v-model="showDeleteSessionButton"
                    value="showDeleteSessionButton"
                    type="radio"
                    class="form-check-input"
                    name="showDeleteSessionButton">
            Show Delete Session Buttons
          </label>
        </div>
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
              <th class="center-align-table-cell">Get Details</th>
              <th v-if="showDeleteSessionButton" class="center-align-table-cell">Delete Session</th>
            </tr>
          </thead>
          <tbody>

            <tr v-for="session in filteredLabSessions">
              <td>{{session.lab_code}}</td>
              <td>{{session.long_name}}</td>
              <td class="center-align-table-cell">{{session.session_number}}</td>
              <td class="center-align-table-cell">{{dateOnly(session.first_sample_day)}}</td>
              <td class="center-align-table-cell">
                <button v-on:click="goToSamplesForSession(session)" class="btn btn-sm btn-info">View Site Samples</button>
              </td>
              <td v-if="showDeleteSessionButton" class="center-align-table-cell">
                <button v-on:click="deleteSessionSelected(session)" class="btn btn-sm btn-default">Delete Session {{session.session_number}}</button>
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
    return {
      labSessions : [],
      showDeleteSessionButton : null,
      showDeleteModal: false,
      sessionToDelete: null
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

    doCancelDelete: function() {
      console.log("DOING CANCEL DELETE");
      this.showDeleteModal = false;
      this.sessionToDelete = null;
    },

    doConfirmDelete: function() {
      console.log("DELETE CONFIRMATION");
      this.deleteSession();
    },

    doDelete: function() {
      this.showDeleteModal = true;
      console.log("DOING DELETE");
    },

    deleteSessionSelected: function(session) {
      console.log(`about to delete session ${session.session_number}`);
      this.sessionToDelete = session;
      this.showDeleteModal = true;
    },

    toggleDeleteSessionButton: function () {
      this.showDeleteSessionButton ? this.showDeleteSessionButton = null : this.showDeleteSessionButton = "showDeleteSessionButton";
    },

    deleteSession: function() {

      var msg = {
        method: 'delete',
        url: `/api/deleteSession`,
        data: {session_id: this.sessionToDelete.session_id}
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.sessionDeleted === true) {
            this.showDeleteModal = false;  // let the modal know it can go away
            // reload the sessions
            this.sessionToDelete = null;
            this.getLabSessions();
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

    passesLabFilter: function(labSession){
      if (this.$store.state.userChoices.labSessionFilterChoice === "All") {
        return true;
      }
      else {
        return (labSession.short_name === this.$store.state.userChoices.labSessionFilterChoice);
      }
    },

    dateOnly: function(dateAndTime){
      return dateAndTime.split('T')[0];
    },

    getLabSessions: function() {

      //console.log("LOADING LAB SESSIONS");
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
    },

    goToSamplesForSession: function (session){
      var params = {};
      params["lab_id"] = session.lab_id;
      params["session_number"] = session.session_number;
      params["lab_long_name"] = session.long_name;

      this.$router.push({name: 'samplesForSession', params: params});
    },

    goToCreateNewSession: function (session){
      this.$router.push({name: 'createNewSession'});
    }
  },  // end of methods
  created() {
    console.log("CHOICE: ", this.$store.state.userChoices.labSessionFilterChoice);
    this.getLabSessions();
  }
}
</script>
