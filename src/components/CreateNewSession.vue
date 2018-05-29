Error<template>
<div class="container">

  <div class="row">
    <div class="col-md-offset-3 col-md-6">
      <error-alerts v-if="haveErrors" v-bind:errors="entryErrors" v-on:reset-error="resetError"></error-alerts>
    </div>
  </div>


  <div class="row">
    <div class="col-lg-12">
      <h3>Create new session</h3>
    </div>
  </div>

  <CreateNewSessionForLab v-for="labInfo in labInfoList" :key="labInfo.lab_id" v-bind:labInfo="labInfo"
                                                                               v-on:add-error="addError"
                                                                               v-on:reset-errors="resetErrors"></CreateNewSessionForLab>

</div>
</template>



<script>

var errorMsgs = require('../util/errorMessages');
import CreateNewSessionForLab from './CreateNewSessionForLab.vue';
import ErrorAlerts from './ErrorAlerts.vue';



export default {
  data() {
    return {
      labInfoList: [],
      entryErrors: []
    }
  },
  components: {CreateNewSessionForLab, ErrorAlerts},

  computed: {
    haveErrors : function() {
      return this.entryErrors.length > 0;
    }, // end of computed
  },
  methods: {

    resetError : function(id) {
      this.entryErrors.splice(id, 1);
    },

    // resets all errors by assigning an empty array
    resetErrors : function() {
      this.entryErrors = [];
    },

    getMaxSessionNumbersForLabs: function(callback) {

      var msg = {
        method: 'get',
        url: '/api/getMaxSessionNumbersForLabs/'
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.maxSessionNumbers) {
            this.labInfoList = response.data.maxSessionNumbers;
            if (callback) {
              callback();
            }
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

    addError: function(errorMsg){
    //  console.log("GOT THE MESSAGE", errorMsg);
      this.entryErrors.push(errorMsg);
    }
  }, // end of methods
  created() {
    this.getMaxSessionNumbersForLabs();
  }
}
</script>
