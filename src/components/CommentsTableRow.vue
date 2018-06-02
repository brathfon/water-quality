<template>
  <tr v-if="willShowMyself" v-bind:class="stripColor()">
    <td colspan="16">
      <b>{{hui_abv}} comments:</b> {{comments}}
    </td>
  </tr>

</template>

<script>

export default {
data() {
  return {
  }
}, // end of data
components: {},
props: ['showFullComments', 'id', 'comments', 'hui_abv'],
computed: {
  willShowMyself : function() {
    return this.comments != null ? this.showFullComments : false;
  }
}, // end of computed
methods : {
  stripColor: function() {
    return (this.id % 2) === 0  ? "even-table-row" : "";
  }
}
};

</script>
