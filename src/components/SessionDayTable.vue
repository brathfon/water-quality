<template>
<div>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Location Name</th>
        <th>Location Code</th>
        <th class="in-situ-header-cell">Time</th>
        <th class="in-situ-header-cell">Temp (C)</th>
        <th class="in-situ-header-cell">Sal (ppt)</th>
        <th class="in-situ-header-cell">DO (mg/L)</th>
        <th class="in-situ-header-cell">DO Saturation (%)
        </th>
        <th class="in-situ-header-cell">pH</th>
        <th class="in-situ-header-cell">Turbidity (NTU)
        </th>
        <th class="in-situ-header-cell">Total N (ug/L)
        </th>
        <th class="in-situ-header-cell">Total P (ug/L)
        </th>
        <th class="in-situ-header-cell">Phosphate (ug/L)
        </th>
        <th class="in-situ-header-cell">Silicate (ug/L)
        </th>
        <th class="in-situ-header-cell">NNN (ug/L)</th>
        <th class="in-situ-header-cell">Ammonia (ug/L)
        </th>
        <th>Comments</th>
      </tr>
    </thead>
    <tbody>
      <template v-for="(sample, index) in samples">
        <tr v-bind:class="stripColor(index)">
          <td>{{sample.long_name}}</td>
          <td>{{sample.hui_abv}}</td>
          <td class="in-situ-table-cell">{{formatSampleTime(sample.time)}}</td>
          <td class="in-situ-table-cell">{{formatSample("temperature", sample.temperature)}}</td>
          <td class="in-situ-table-cell">{{formatSample("salinity", sample.salinity)}}</td>
          <td class="in-situ-table-cell">{{formatSample("dissolved_oxygen", sample.dissolved_oxygen)}}</td>
          <td class="in-situ-table-cell">{{formatSample("dissolved_oxygen_pct", sample.dissolved_oxygen_pct)}}</td>
          <td class="in-situ-table-cell">{{formatSample("ph", sample.ph)}}</td>

          <td>
            <table class="in-situ-inner-table">
              <tr>
                <td class="in-situ-table-cell">{{formatSample("turbidity_1", sample.turbidity_1)}}</td>
              </tr>
              <tr>
                <td class="in-situ-table-cell">{{formatSample("turbidity_2", sample.turbidity_2)}}</td>
              </tr>
              <tr>
                <td class="in-situ-table-cell">{{formatSample("turbidity_3", sample.turbidity_3)}}</td>
              </tr>
            </table>
          </td>

          <td class="in-situ-table-cell">{{formatSample("total_nitrogen", sample.total_nitrogen)}}</td>
          <td class="in-situ-table-cell">{{formatSample("total_phosphorus", sample.total_phosphorus)}}</td>
          <td class="in-situ-table-cell">{{formatSample("phosphate", sample.phosphate)}}</td>
          <td class="in-situ-table-cell">{{formatSample("silicate", sample.silicate)}}</td>
          <td class="in-situ-table-cell">{{formatSample("nitrates", sample.nitrates)}}</td>
          <td class="in-situ-table-cell">{{formatSample("ammonia", sample.ammonia)}}</td>
          <td v-on:click="toggleComments(index)" class="in-situ-table-cell">{{commentsSubStr(sample.comments)}}</td>
        </tr>

        <CommentsTableRow v-bind:id="index"
                          v-bind:showFullComments="showFullComments[index]"
                          v-bind:hui_abv="sample.hui_abv"
                          v-bind:comments="sample.comments"></CommentsTableRow>

      </template>

    </tbody>
  </table>
</div>
</template>

<script>
import CommentsTableRow from './CommentsTableRow.vue';
var lookupHelper = require('../util/lookupInformationHelper');


export default {
  data() {
    return {
      showFullComments : []
    }
  }, // end of data
  components: {CommentsTableRow},
  props: ['samples'],
  methods: {
    formatSampleTime: function(theTime) {
      return lookupHelper.formatSampleTime(theTime);
    },
    formatSample: function(attribute, theSample) {
      return lookupHelper.setPrecision.call(this, attribute, theSample);
    },
    toggleComments: function(index) {
      //console.log("toggle: ", index, " ", this.showFullComments[index]);
        this.showFullComments[index] = !this.showFullComments[index];
        //console.log("SHOW FULL COMMENTS ", this.showFullComments);
        this.$forceUpdate();  // needed because I guess no update when clicking on <td>
    },
    commentsSubStr : function (comments) {
      return lookupHelper.formatCommentsSubstring(comments);
    },
    initializeShowFullComments : function() {
      var i;
      for (i = 0; i < this.samples.length; ++i) {
        this.showFullComments[i] = false;
      }
    },
    stripColor: function(index) {
      return (index % 2) === 0  ? "even-table-row" : "";
    }
  }, // end of methods
  computed: {

  }, // end of computed
  created() {
    this.initializeShowFullComments();
  }
}
</script>
