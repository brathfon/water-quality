<template>
<div>
  <form>
    <fieldset class="form-group">
      <legend>Radio buttons</legend>
      <div class="form-check">
        <label class="form-check-label">
        <input v-on:click="buttonSelected('south_maui')" type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
        South Maui
      </label>
      </div>
      <div class="form-check">
        <label class="form-check-label">
        <input v-on:click="buttonSelected('west_maui')" type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
        West Maui
      </label>
      </div>
      <div class="form-check disabled">
        <label class="form-check-label">
        <input  v-on:click="buttonSelected('all')" type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3" value="option3">
        All
      </label>
      </div>
    </fieldset>
  </form>
</div>
</template>

<script>
  import labs from '../util/labs';

  export default {
    methods: {
      buttonSelected : function(whichButton){
        console.log("button: ", whichButton);
      }
    }
  }
</script>
