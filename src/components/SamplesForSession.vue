<template>
<div class="container">

  <div class="row">
    <div class="col-lg-12">
      <h3>Samples for {{lab_long_name}}, Session {{session_number}}</h3>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <SessionDay v-for="dayObj in samplesByDate" v-bind:lab_id="lab_id"
                                                  v-bind:session_number="session_number"
                                                  v-bind:lab_long_name="lab_long_name"
                                                  v-bind:dayObj="dayObj"></SessionDay>
    </div>
  </div>
</div>
</template>

<script>
var errorMsgs = require('../util/errorMessages');
var dfHelper = require('../util/dataFormatHelper');
import SessionDay from './SessionDay.vue';

export default {
  data() {
    return {  lab_id : -1,
      session_number : -1,
      lab_long_name: "",
      samples : {},
      samplesByDate : {},
      workers : {}
    }
  },
  components: {
    SessionDay
  },
  computed: {
  },
  methods: {
    
    dateOnly: function(dateAndTime){
      return dateAndTime.split('T')[0];
    },
    // get the samples for the session, and if successful, get the works, too (may not have any in old data)
    getSamplesForSession: function(callback) {

      var msg = {
        method: 'get',
        url: '/api/getSamplesForSession/' + this.lab_id + '/' + this.session_number
      }

      this.$http(msg)
        .then((response) => {
          if ( response.data.samples ){
            this.samples = response.data.samples;
            if (callback){
              callback();
            }
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

    getWorkersForSession: function(callback) {

      var msg = {
        method: 'get',
        url: '/api/getWorkersForSession/' + this.lab_id + '/' + this.session_number
      }

      this.$http(msg)
        .then((response) => {
          if ( response.data.workers ){
            this.workers = response.data.workers;
            if (callback){
              callback();
            }
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

    dataLoaded: function() {
      this.samplesByDate = dfHelper.organizeSamplesAndWorkersByDate(this.samples, this.workers);
    },

    getData: function() {
      var that = this;
      this.getSamplesForSession(function() {
        that.getWorkersForSession(function() {
          that.dataLoaded();
        })
      })
    }
  },
  created() {
    this.lab_id = this.$route.params.lab_id;
    this.session_number = this.$route.params.session_number;
    this.lab_long_name = this.$route.params.lab_long_name;
    this.getData();
  }
}
</script>
