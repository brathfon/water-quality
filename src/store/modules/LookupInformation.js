const namespaced = true;

const state = {
  labs: []
}


const mutations = {
  updateLabs(state, status) {
    state.labs = status;
  }
}; // end of mutations


const actions = {};

export default {
  namespaced,
  state,
  mutations,
  actions
}
