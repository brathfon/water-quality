<template>
<div>
  <table class="table table-striped table-hover">
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
      <SessionDayTableRow v-for="sample in samples" :key="sample.sample_id" v-bind:sample="sample"></SessionDayTableRow>
    </tbody>
  </table>
</div>
</template>

<script>
import SessionDayTableRow from './SessionDayTableRow.vue';

export default {
  components: {SessionDayTableRow},
  props: ['samples'],
  methods: {} // end of methods
}
</script>
