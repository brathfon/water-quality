<template>
  <div class="container wq-container">


    <div class="row">
      <div class="col-xs-12">
        <h3>{{headerString()}}</h3>
      </div>
    </div>

    <div v-for="(site, index) in sites" class="row">
      <div class="col-xs-1 site-overview-text">
        {{site.hui_abv}}
      </div>
      <div class="col-xs-3 site-overview-text">
        {{site.long_name}}
      </div>
      <div class="col-xs-1 site-overview-text">
        {{site.default_sampling_order}}
      </div>
      <div class="col-xs-1">
        <button v-on:click="upButtonSelected(index)" type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span>
        </button>
      </div>
      <div class="col-xs-1">
        <button v-on:click="downButtonSelected(index)" type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
        </button>
      </div>

    </div>

    <div class="row">
      <div class="col-xs-2 site-details">
        <SaveButton v-bind:isSaving="isSaving" v-on:do-save="doSave"></SaveButton>
      </div>
      <div class="col-xs-2 site-details">
        <button v-on:click="doCancelEdit" class="btn btn-warning">Cancel</button>
      </div>
    </div>


  </div>  <!--- end of container -->
</template>

<script>

var errorMsgs = require('../util/errorMessages');
var labHelper = require('../util/labInfoHelper');
import SaveButton from './SaveButton.vue';



export default {
  data() {
    return {
      sites: [],
      lab_id: null,
      default_sample_day: null,
      isSaving: false
    }
  },
  components: {
    SaveButton
  },
  computed: {
  },
  methods: {

    upButtonSelected: function(index) {
      console.log(`Up button selected for ${index}`);
      this.shiftSites("up", index);
    },

    downButtonSelected: function(index) {
      console.log(`Down button selected for ${index}`);
      this.shiftSites("down", index);
    },

    // this moves a site in the sites array one position, either "up",
    // which is toward the beginning or 0th element, or "down" which
    // is toward the end of the array.
    shiftSites: function(direction, index) {
      let largestIndex = null;
      let smallestIndex = null;
      if (direction === "up")  {
        largestIndex = index;
        smallestIndex = index - 1;
      }
      else if (direction === "down") {
        largestIndex = index + 1;
        smallestIndex = index;
      }
      console.log(`INDEXES ${smallestIndex} swap with ${largestIndex}`)
      // if the largest and smallest indexes are within the bounds of the
      // array, then swap the sites.
      if ((smallestIndex >= 0) && (largestIndex <= (this.sites.length - 1))) {
        console.log("DOING THE SWAP");
        const tempSite = this.sites[smallestIndex];
        this.sites[smallestIndex] = this.sites[largestIndex];
        this.sites[largestIndex] = tempSite;
        this.numberSamplingOrder();
        this.$forceUpdate();
      }
    },

    numberSamplingOrder: function() {
      for (let i = 0; i < this.sites.length; ++i){
        this.sites[i].default_sampling_order = i + 1;
      }
    },

    sleep: function(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
    },

    updateComplete : function() {
      this.sleep(1000).then(() => {
        this.isSaving = false;
        console.log("UPDATE COMPLETE");
        this.$router.push('/sitesOverview');
      });
    },

    updateOneSite: function(index){

      this.$http.put('/api/updateDefaultSamplingOrder/', this.sites[index])
      .then((response) => {
        //console.log("INITIAL response ->  for " + index, response);
        if (index > 0) { // continue the recursion
          this.updateOneSite(--index);
        }
        else {
          this.updateComplete();
        }
      })
      .catch((error) => {
        //console.log("ERROR updating -> ", this.samples[index].long_name);
        errorMsgs.handleHttpErrors.call(this, error);
        if (index > 0) { // continue the recursion
          this.updateOneSite(--index);
        }
        else {
          this.updateComplete();
        }
      });
    },

    doCancelEdit: function() {
      console.log("DOING CANCEL EDIT");
      this.$router.push('/sitesOverview');
    },


    doSave: function() {

      //e.preventDefault();
      console.log("DO DEFAULT ORDER SAVE");

      this.isSaving = true;

      this.updateOneSite(this.sites.length - 1);
    },

    getDefaultSamplingOrder: function() {

      console.log("LOADING DEFAULT SAMPLING ORDER");
      var msg = {
        method: 'get',
        url: `/api/getDefaultSamplingOrder/${this.lab_id}/${this.default_sample_day}`,
        data: {}
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.defaultSamplingOrder) {
            this.sites = response.data.defaultSamplingOrder;
            this.numberSamplingOrder();
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

    headerString: function() {
      const labShortName = labHelper.getLabLongName.call(this, Number(this.lab_id));
      return `Editing Sampling Order for Day ${this.default_sample_day}, ${labShortName} `;
    },


  },
  created() {

    this.lab_id = this.$route.params.lab_id;
    this.default_sample_day = this.$route.params.default_sample_day;
    this.getDefaultSamplingOrder();
  }
}
</script>
