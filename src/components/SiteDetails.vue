<template>
<div class="container wq-container">


  <div class="row">
    <div class="col-xs-12">
      <h3>{{headerString()}}</h3>
    </div>
  </div>

<!-- this modal prompt (cancel or delete) is for when the user decides to delete a site, which is unusual -->
  <div v-if="showDeleteModal" class="row">
    <div class="col-lg-12">
      <transition name="modal">
        <div class="modal" style="display: block">
                <div class="modal-dialog" >
                  <div class="modal-content">
                    <div class="modal-header">
                      <button v-on:click="doCancelDelete" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                      <h4 class="modal-title">Delete Site {{site.long_name}} ({{site.hui_abv}})</h4>
                    </div>
                    <div class="modal-body">
                      <p>You should only be deleting a site if you created a site in error. If samples
                        have been taken and entered into the database at this site, just set this site to inactive.
                      </p>
                    </div>
                    <div class="modal-footer">
                      <button v-on:click="doCancelDelete" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                      <button v-on:click="doConfirmDelete" type="button" class="btn btn-primary">Delete Site</button>
                    </div>
                  </div>
                </div>
          </div>
      </transition>
    </div>
  </div>

  <div v-if="dataLoaded" class="row">

    <!-- Details side of the page -->
    <div class="col-lg-6">

      <!-- Site Abbreviation row -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Abbreviation
        </div>
        <div class="col-xs-8 site-details">
          <input type="text" size="12" v-model="site.hui_abv" class="site-input">
        </div>
      </div>

      <!-- Site Long Name row -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Site Long Name
        </div>
        <div class="col-xs-8 site-details">
          <input type="text" size="32" v-model="site.long_name" class="site-input">
        </div>
      </div>

      <!--Lab -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Lab
        </div>
        <div class="col-xs-8 site-details">
          <select v-model="site.lab_id" class="site-input">
              <option v-if="inCreateNewMode()" disabled value="">Please select a lab</option>
              <option v-for="lab in this.$store.state.lookupInfo.labs" v-bind:value="lab.lab_id">
                {{lab.long_name}}
              </option>
            </select>
        </div>
      </div>

      <!-- Default sample day -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Default Sample Day
        </div>
        <div class="col-xs-8 site-details">
          <input type="text" size="32 " v-model="site.default_sample_day" class="site-input">
        </div>
      </div>

      <!-- is site active or inactive , radio buttons-->
      <div class="row">
        <div class="col-xs-4 wq-edit-choices">
          <fieldset class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input value="1" type="radio" class="form-check-input" v-model="site.active">
                Active
              </label>
            </div>
            <div class="form-check">
              <label class="form-check-label">
                <input value="0" type="radio" class="form-check-input" v-model="site.active">
                Inactive
              </label>
            </div>
          </fieldset>
        </div>
      </div>


      <!-- latitude -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Latitude
        </div>
        <div class="col-xs-8 site-details">
          <input type="text" size="32" v-model="site.lat" class="site-input">
        </div>
      </div>

      <!-- longitude -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Longitude
        </div>
        <div class="col-xs-8 site-details">
          <input type="text" size="32" v-model="site.lon" class="site-input">
        </div>
      </div>

      <!-- storet code -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          STORET code (opt)
        </div>
        <div class="col-xs-8 site-details">
          <input type="text" size="32" v-model="site.storet_code" class="site-input">
        </div>
      </div>


      <!-- description -->
      <div class="row">
        <div class="col-xs-4 site-details site-details-label">
          Description
        </div>
      </div>

      <div class="row">
        <div class="col-xs-12 site-details">
          <textarea cols="56" rows="10" maxlength="1024" v-model="site.description" class="site-text-area"></textarea>
        </div>
      </div>

      <div class="row">
        <div class="col-xs-2 site-details">
          <SaveButton v-bind:isSaving="isSaving" v-on:do-save="doSave"></SaveButton>
        </div>
        <div class="col-xs-2 site-details">
          <button v-on:click="doCancelEdit" class="btn btn-warning">Cancel</button>
        </div>
        <div v-if="inEditMode()" class="col-xs-2 site-details">
          <button v-on:click="doDelete" class="btn btn-default">Delete Site</button>
        </div>
      </div>

    </div>

    <!-- This will be the google map -->
    <div class="col-lg-6">
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
var errorMsgs = require('../util/errorMessages');
import SaveButton from './SaveButton.vue';


export default {
  data() {
    return {
      site_id: null, // if creating, this will be null.
      mode: "update", // modes are "createNew" or "edit"
      site: {},
      isSaving: false,
      dataLoaded: false, // getting the data for the site
      showDeleteModal: false
    }
  },
  components: {
    SaveButton
  },
  computed: {},
  methods: {

    doSave: function() {
      console.log("DOING DO-SAVE");
      this.saveSite();
      this.isSaving = true;
    },

    doCancelEdit: function() {
      console.log("DOING CANCEL EDIT");
      this.$router.push('/sitesOverview');
    },

    doCancelDelete: function() {
      console.log("DOING CANCEL DELETE");
      this.showDeleteModal = false;
    },

    doConfirmDelete: function() {
      console.log("DELETE CONFIRMATION");
      this.deleteSite();
    },

    doDelete: function() {
      this.showDeleteModal = true;
      console.log("DOING DELETE");
    },

    inCreateNewMode: function() {
      console.log(`IN CREATENEW_MODE ${this.mode === "createNew"}`)
      return (this.mode === "createNew");
    },

    inEditMode: function() {
      return (this.mode === "edit");
    },

    toggleActive: function() {
      this.site.active === 1 ? this.site.active = 0 : this.site.active = 1;
    },

    headerString: function() {

      var hdrStr = "default";

      switch (this.mode) {
        case 'edit':
          hdrStr = `Editing site ${this.site.hui_abv} (${this.site.long_name})`;
          break;
        case "createNew":
          hdrStr = `Creating a new site`;
          break;
        default:
          hdrStr = `ERROR: unknown mode`;
      }
      return hdrStr;
    },

    deleteSite: function() {

      var msg = {
        method: 'delete',
        url: `/api/deleteSite`,
        data: {site_id: this.site_id}
      }

      this.$http(msg)
        .then((response) => {
          if (response.data.deleteSiteResults) {
            this.showDeleteModal = false;  // let the modal know it can go away
            // go back to overview page
            this.$router.push('/sitesOverview');
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
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
            this.site['mode'] = "update";
            this.dataLoaded = true;
          }
        })
        .catch((error) => {
          errorMsgs.handleHttpErrors.call(this, error);
        });
    },

    sleep: function(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
    },

    saveComplete: function(noErrors) {
      //this.getSamplesForSession();  // reload from database
      this.sleep(1000).then(() => {
        this.isSaving = false;
        console.log("SAVE COMPLETE");
        if (noErrors) {
          this.$router.push('/sitesOverview'); // redirect to the first page
        }
      });
    },


    saveSite: function() {

      this.$http.post('/api/updateOrInsertSite/', this.site)
        .then((response) => {
          //console.log("INITIAL response ->  for " + index, response);
          this.saveComplete(true);
          //this.$router.push('/adminOverview');  // redirect to the first page
        })
        .catch((error) => {
          //console.log("ERROR updating -> ", this.samples[index].long_name);
          errorMsgs.handleHttpErrors.call(this, error);
          this.saveComplete(false);
        });
    },

  },
  created() {
    this.site_id = this.$route.params.site_id;
    this.mode = this.$route.params.mode;
    if (this.inEditMode()) {
      this.getSiteDetails();
    } else { // in createNew or insert mode
      this.site = {};

      var tempDesc = "";
      this.site['mode'] = "insert";
      this.site['active'] = 1;
      this.site['default_sample_day'] = "Day sampled in session";
      this.site['description'] = "512 characters max";
      this.site['hui_abv'] = "3 characters";
      this.site['lab_id'] = "";
      this.site['lat'] = "decimal, ex: 20.994222";
      this.site['lon'] = "decimal, ex: -156.667417";
      this.site['long_name'] = "Use DOH name if possible";
      this.site['storet_code'] = "ex: 000723";
      this.dataLoaded = true;
    }
  }
}
</script>
