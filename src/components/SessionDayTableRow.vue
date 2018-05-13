<template>
<tr>
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


</tr>
</template>

<script>

var lookupHelper = require('../util/lookupInformationHelper');

export default {
  props: ['sample'],
  methods: {
    formatSampleTime: function(theTime) {
      return lookupHelper.formatSampleTime(theTime);
    },
    formatSample: function(attribute, theSample) {
      return lookupHelper.setPrecision.call(this, attribute, theSample);
    }
  } // end of methods
}
</script>
