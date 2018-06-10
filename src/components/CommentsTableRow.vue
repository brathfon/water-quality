<template>
<tr v-if="willShowMyself" v-bind:class="stripeColor()">
  <td colspan="16">
    <b>{{hui_abv}} comments:</b> {{comments}}
  </td>
</tr>
</template>

<script>
var presHelper = require('../util/dataPresentationHelper');

export default {
  data() {
    return {}
  }, // end of data
  components: {},
  props: ['showFullComments', 'id', 'comments', 'hui_abv'],
  computed: {
    willShowMyself: function() {
      return this.comments != null ? this.showFullComments : false;
    }
  }, // end of computed
  methods: {
    stripeColor: function() {
      return presHelper.stripeColor(this.id);
    }
  }
};
</script>
