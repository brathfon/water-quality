<template>
<div class="container wq-container">

  <div class="row">
    <div class="col-lg-12">
      <h3>{{headerString()}}</h3>
    </div>
  </div>

  <div v-if="dataLoaded" class="row">

    <!-- Details side of the page -->
    <div class="col-lg-6">

      <!-- Site Abbreviation row -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Site Abbreviation
        </div>
        <div class="col-xs-8 site-details">
          {{abbreviation()}}
        </div>
      </div>

      <!-- Site Long Name row -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Site Long Name
        </div>
        <div class="col-xs-8 site-details">
          {{longName()}}
        </div>
      </div>

      <!-- Default sample day -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Lab
        </div>
        <div class="col-xs-8 site-details">
          {{lab()}}
        </div>
      </div>

      <!-- Default sample day -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Default Sample Day
        </div>
        <div class="col-xs-8 site-details">
          {{defaultSampleDay()}}
        </div>
      </div>

      <!-- is site active or inactivde -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Active
        </div>
        <div class="col-xs-8 site-details">
          {{active()}}
        </div>
      </div>

      <!-- latitude -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Latitude
        </div>
        <div class="col-xs-8 site-details">
          {{lat()}}
        </div>
      </div>

      <!-- longitude -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Longitude
        </div>
        <div class="col-xs-8 site-details">
          {{lon()}}
        </div>
      </div>

      <!-- description -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Description
        </div>
        <div class="col-xs-8 site-details">
          {{description()}}
        </div>
      </div>


    </div>

    <!-- This will be the google map -->
    <div class="col-sm-6">
      <h3>Google Map</h3>
    </div>

  </div>
  <div v-else>
    loading data.....
  </div>

</div>
</template>

<script>
var labHelper = require('../util/labInfoHelper');

export default {
  data() {
    return {
      site_id: null, // if creating, this will be null.
      site: {},
      dataLoaded: false  // getting the data for the site
    }
  },
  components: {},
  computed: {},
  methods: {

    abbreviation: function () {
      return this.site.hui_abv;
    },

    longName: function () {
      return this.site.long_name;
    },

    lab: function () {
      return labHelper.getLabLongName.call(this, this.site.lab_id);

    },

    defaultSampleDay: function () {
      return this.site.default_sample_day;
    },

    active: function () { return this.site.active ? 'Yes' : 'No';},

    lat: function () {
      return this.site.lat;
    },

    lon: function () {
      return this.site.lon;
    },

    description: function() {
      return this.site.description;
    },

    headerString: function() {

      return `Details for site ${this.site.hui_abv} (${this.site.long_name})`;
    },

    getSiteDetails: function() {

      var msg = {
        method: 'get',
        url: `/api/getSiteDetails/${this.site_id}`,
        data: {}
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.siteDetails) {
            this.site = response.data.siteDetails[0];
            this.dataLoaded = true;
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },
  },
  created() {
    this.site_id = this.$route.params.site_id;
    this.getSiteDetails();
  }
}
</script>
