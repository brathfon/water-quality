

const namespaced = true;

const state = {
    // current choices for filters
    labSessionFilterChoice : 'All'
  }

const mutations = {
    updateLabSessionFilterChoice(state, labShortName) {
      state.labSessionFilterChoice = labShortName;
    }

  };  // end of mutations

  export default {
    namespaced, state, mutations
  }
