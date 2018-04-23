<template>
  <div class="container">
    <div class="row page-header">
      <div class="col-lg-12">
        <h3>Lab Sessions</h3>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <a href="/createNewSession" class=
        "btn btn-sm btn-info">Add Session</a>
      </div>
    </div>
    <div class="row">
      <lab-filter></lab-filter>
    </div>
    <div class="row">
      <div class="col-md-12">
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th>Lab Code</th>
              <th>Lab Name</th>
              <th class="center-align-table-cell">Session
              Number</th>
              <th class="center-align-table-cell">Start Date</th>
              <th class="center-align-table-cell">get
              Details</th>
            </tr>
          </thead>
          <tbody>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
  import LabFilter from "./LabFilter.vue";

  export default {
    components: { LabFilter }
  }
</script>
