const namespaced = true;

const state = {
  labs: [],
  measurementPrecision: []
}


const mutations = {
  updateLabs(state, status) {
    state.labs = status;
  },
  updateMeasurementPrecision(state, status) {
    state.measurementPrecision = status;
  }
}; // end of mutations


const actions = {};

export default {
  namespaced,
  state,
  mutations,
  actions
}
