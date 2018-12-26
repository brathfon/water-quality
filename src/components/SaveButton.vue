<template>
  <div>
    <button v-if="!isSaving" v-on:click="doSave" class="btn btn-primary">Save</button>
    <button v-if="isSaving" class="btn btn-warning"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate"></span> Saving...</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
    }
  },
  computed: {
    duhisSaving: function() {
      return this.isSaving;
    }
  },
  props: ['isSaving'],
  methods: {
    doSave: function () {
      this.$emit('do-save');
    }

  }
}

</script>
