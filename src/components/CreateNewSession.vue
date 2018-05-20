<template>
<div class="container">

  <div class="row">
    <div class="col-lg-12">
      <h3>Create new session</h3>
    </div>
  </div>

  <CreateNewSessionForLab v-for="labInfo in labInfoList" v-bind:labInfo="labInfo"></CreateNewSessionForLab>

</div>
</template>



<script>

var errorMsgs = require('../util/errorMessages');
import CreateNewSessionForLab from './CreateNewSessionForLab.vue';


export default {
  data() {
    return {
      labInfoList: []
    }
  },
  components: {CreateNewSessionForLab},
  methods: {
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
  }, // end of methods
  created() {
    this.getMaxSessionNumbersForLabs();
  }
}
</script>
