<template>
<p v-if="haveWorkers" class="left-text">
  <strong>Samplers: </strong> {{workerList()}}
</p>
</template>

<script>
export default {

  props: ['workers'],

  computed: {
    haveWorkers: function() {
      return this.workers.length > 0;
      //return true;
    }

  }, // end computed


  methods: {

    workerList: function() {
      var workerStr = "";
      var i;
      var worker;
      for (i = 0; i < this.workers.length; ++i) {
        worker = this.workers[i];
        workerStr += worker.first_name + " " + worker.last_name;
        if (i < this.workers.length - 1) {
          workerStr += ", ";
        }
      }
      return workerStr;
    }
  } // end of methods
}
</script>
