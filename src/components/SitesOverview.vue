<template>
<div class="container wq-container">
  <div class="row">
    <div class="col-lg-12">
      <h3>Sites</h3>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-4">
      <button v-on:click="goToCreateSite()" class="btn btn-sm btn-info">Add A New Site</button>
    </div>
    <div class="col-xs-4">
      <lab-filter></lab-filter>
    </div>
    <div class="col-xs-4">
      <div class="form-check">
        <label class="form-check-label">
          <input  v-on:click="toggleSamplingOrderButton"
                  v-model="showSamplingOrderButton"
                  value="showSamplingOrderButton"
                  type="radio"
                  class="form-check-input"
                  name="showSamplingOrderButton">
          Edit Sampling Order
        </label>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-offset-7 col-xs-1">Sample</div>
    <div class="col-xs-1">Sampling</div>
  </div>
  <div class="row">
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-header">Site Abv</div>
    <div class="col-lg-3 col-md-3 col-sm-2 site-overview-header">Site Long Name</div>
    <div class="col-lg-3 col-md-3 col-sm-2 site-overview-header">Lab Name</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-header">Day</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-header">Order</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-header">Active</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-header">Details</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-header">Edit</div>
  </div>
  <div v-for="(site, index) in filteredSites" class="row site-overview-row" v-bind:class="siteClass(index, site.default_sample_day)">
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-text">{{site.hui_abv}}</div>
    <div class="col-lg-3 col-md-3 col-sm-2 site-overview-text">{{site.long_name}}</div>
    <div class="col-lg-3 col-md-3 col-sm-2 site-overview-text">{{labLongName(site.lab_id)}}</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-text">{{site.default_sample_day}}</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-text">{{site.default_sampling_order}}</div>
    <div class="col-lg-1 col-md-1 col-sm-1 site-overview-text">{{activeString(site.active)}}</div>
    <div class="col-lg-1 col-md-1 col-sm-1">
      <a v-on:click="goToDetails(site.site_id)" class="btn btn-link">Details</a>
    </div>
    <div class="col-lg-1 col-md-1 col-sm-1">
      <a v-on:click="goToEdit(site.site_id)" class="btn btn-link">Edit</a>
    </div>
    <div v-if="site.lastThisDay === true  && showSamplingOrderButton" class="row">
      <div class="col-xs-2 col-xs-offset-5" id="edit-sampling-order-button">
        <button v-on:click="goToChangeSamplingOrder(site.lab_id, site.default_sample_day)"
                class="btn btn-sm btn-default">
                Edit Sampling Order for Day {{site.default_sample_day}}
        </button>
      </div>
    </div>
  </div>
  <div class="row">

  </div>
</div>
</template>


<script>
import LabFilter from "./LabFilter.vue";
var presHelper = require('../util/dataPresentationHelper');
var labHelper = require('../util/labInfoHelper');


export default {
  data() {
    return {
      sites: [],
      lastSiteIndexInSampleDay : {}, // will be used to put in a button to edit the site sample order for a day
      showSamplingOrderButton: false
    }
  },
  components: {
    LabFilter
  },
  computed: {
    filteredSites : function () {
      return this.sites.filter(this.passesLabFilter);
    }
  },
  methods: {

    toggleSamplingOrderButton: function () {
      this.showSamplingOrderButton ? this.showSamplingOrderButton = null : this.showSamplingOrderButton = "showSamplingOrderButton";
    },

    passesLabFilter: function(site){
      if (this.$store.state.userChoices.labSessionFilterChoice === "All") {
        return true;
      }
      else {
        return (labHelper.getLabShortName.call(this, site.lab_id) === this.$store.state.userChoices.labSessionFilterChoice);
      }
    },

    activeString: (isActive) => { return isActive ? 'Yes' : 'No';},

    labLongName: function(lab_id) {
      return labHelper.getLabLongName.call(this, lab_id);
    },

    goToDetails: function(site_id) {

      const params = {
        'site_id': site_id
      };
      this.$router.push({name: 'siteDetailsViewOnly', params: params});
    },

    goToEdit: function(site_id) {

      const params = {
        'site_id': site_id,
        'mode': 'edit'
      };
      this.$router.push({name: 'siteDetails', params: params});
    },

    goToChangeSamplingOrder: function(lab_id, default_sample_day) {
      console.log(`goToChangeSamplingOrder called for lab ${lab_id}, day ${default_sample_day}`);
      const params = {
        'lab_id': lab_id,
        'default_sample_day': default_sample_day
      };
      this.$router.push({name: 'editSamplingOrder', params: params});


    },

    goToCreateSite: function() {
      const params = {
        'site_id': 0,   // no site ID since it is a new one
        'mode': 'createNew'
      };
      this.$router.push({name: 'siteDetails', params: params});
    },

    siteClass: function(index, sampleDay) {
      var color = "";
      if (sampleDay === 1) {
        color = "-orange";
      }
      else if (sampleDay === 2) {
        color = "-violet";
      }
      else if (sampleDay === 3) {
        color = "-green";
      }
      else if (sampleDay === 4) {
        color = "-blue";
      }
      else if (sampleDay === 5) {
        color = "-red";
      }
      else if (sampleDay === 6) {
        color = "-yellow";
      }
      else {
        color = "";
      }
      return  (index % 2) === 0  ? `even-table-row${color}` : `odd-table-row${color}`;
    },

    populateLastSiteIndex: function() {

      let lastIndex = -1;
      let lastSampleDay = this.sites[0].default_sample_day;
      let lastLabId = -1;
      for (let i = 0; i < this.sites.length; ++i) {
        // first mark and visited sites as not the last sample day
        this.sites[i]['lastThisDay'] = false;
        // now check to see if the last one done was the last for that day and mark it so, if true
        if (this.sites[i].default_sample_day !== lastSampleDay ) {
          this.lastSiteIndexInSampleDay[lastIndex] = {lastLabId, lastSampleDay};
          this.sites[i - 1]['lastThisDay'] = true;
        }
        lastIndex = i;
        lastSampleDay = this.sites[i].default_sample_day;
        lastLabId = this.sites[i].lab_id;
      }
      // the last site is always the last for a day, so must be added
      this.sites[this.sites.length - 1]['lastThisDay'] = true;
    },

    isLastDayForSampleDay: function(index) {
      return (lastSiteIndexInSampleDay[index] !== undefined);
    },

    getSiteOverview: function() {

      console.log("LOADING SITES");
      var msg = {
        method: 'get',
        url: '/api/getSitesOverview',
        data: {}
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.sites) {
            this.sites = response.data.sites;
            this.populateLastSiteIndex();
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

  }, // end of methods
  created() {
    this.getSiteOverview();
  }
};
</script>
