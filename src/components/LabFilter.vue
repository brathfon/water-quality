<template>
<div>
  <form>
    <fieldset class="form-group">
        <div class="form-check" v-for="lab in labChoices">
        <label class="form-check-label">
        <div v-if=lab.currentChoice>
          <input v-on:click="buttonSelected(lab.short_name)" type="radio" class="form-check-input" name="optionsRadios" checked="">
          {{lab.short_name}}
        </div>
        <div v-else>
          <input v-on:click="buttonSelected(lab.short_name)" type="radio" class="form-check-input" name="optionsRadios">
          {{lab.short_name}}
        </div>
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
        //console.log("button: ", whichButton);
        this.$store.commit('userChoices/updateLabSessionFilterChoice', whichButton);
      }
    }, // end of methods
    computed: {
      labChoices : function(){
        var i;
        var choices = [];
        var obj;
        for (i = 0; i < this.$store.state.lookupInfo.labs.length; ++i){
          //console.log('ADDING', this.$store.state.lookupInfo.labs[i]);
          obj = {};
          obj['currentChoice'] = false;
          obj['short_name'] = this.$store.state.lookupInfo.labs[i].short_name;
          if (obj.short_name === this.$store.state.userChoices.labSessionFilterChoice) {
            obj['currentChoice'] = true;
          }
          choices.push(obj);
        }
        obj = {};
        obj['currentChoice'] = false;
        obj['short_name'] = "All";
        if (obj.short_name === this.$store.state.userChoices.labSessionFilterChoice) {
          obj['currentChoice'] = true;
        }
        choices.push(obj);
        return choices;
      }
    }  // end of computed
  }
</script>
