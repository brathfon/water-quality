<template>
<div class="container wq-container">

  <div class="row">
    <div class="col-lg-12">
      <h3>{{headerString()}}</h3>
    </div>
  </div>

  <div class="row">

    <!-- Details side of the page -->
    <div class="col-lg-6">

      <!-- Site Abbreviation row -->
      <div class="row">
        <div class="col-lg-4 site-details site-details-label">
          Site Abbreviation
        </div>
        <div class="col-lg-4 site-details">
          {{abbreviation()}}
        </div>
      </div>

      <!-- Site Long Name row -->
      <div class="row">
        <div class="col-lg-4 site-details site-details-label">
          Site Long Name
        </div>
        <div class="col-lg-6 site-details">
          {{longName()}}
        </div>
      </div>

    </div>

    <!-- This will be the google map -->
    <div class="col-lg-6">
      <h3>Google Map</h3>
    </div>

  </div>

</div>
</template>

<script>
//var labHelper = require('../util/labInfoHelper');

export default {
  data() {
    return {
      site_id: null, // if creating, this will be null.
      mode: "view", // modes are "createNew", "view", and "edit"
      site: {}
    }
  },
  components: {},
  computed: {},
  methods: {

    editOrViewMode : function() {
      return ((this.mode === "edit") || (this.mode === "view"));
    },

    abbreviation: function () {
      return this.editOrViewMode() ? this.site.hui_abv :  "3 letters";
    },

    longName: function () {
      return this.editOrViewMode() ? this.site.long_name :  "Use DOH name if possible";
    },

    headerString: function() {

      var hdrStr = "default";

      switch (this.mode) {
        case 'edit':
          hdrStr = `Editing site with site_id = ${this.site_id}`;
          break;
        case "view":
          hdrStr = `Viewing details for site with site_id = ${this.site_id}`;
          break;
        case "createNew":
          hdrStr = `Creating a new site`;
          break;
        default:
          hdrStr = `ERROR: unknown mode`;
      }
      return hdrStr;
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
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },
  },
  created() {
    this.site_id = this.$route.params.site_id;
    this.mode = this.$route.params.mode;
    if (this.editOrViewMode()) {
      this.getSiteDetails();
    }
  }
}
</script>
