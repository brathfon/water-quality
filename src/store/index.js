import Vue from 'vue';
import Vuex from 'vuex';
Vue.use(Vuex);
                  

export default new Vuex.Store({
  state: {
    firstName : '',
    lastName : '',
    workerID : -1,
    roles : [],
    hasAdministrationRole : false,
    hasDataEntryRole : false,
    hasDataVerificationRole : false,
    hasQualityAssuranceRole : false,
    hasReadOnlyRole : false,
    isLoggedIn : false
  },
  mutations : {
    updateFirstName(state, newFirstName) {
      state.firstName = newFirstName;
    },
    updateLastName(state, newLastName) {
      state.lastName = newLastName;
    },
    updateRoles(state, newRoles) {
      state.roles = newRoles;
    },
    updateWorkerID (state, newWorkerID) {
      state.workerID = newWorkerID;
    },
    updateHasAdministrationRole (state, status) {
      state.hasAdministrationRole = status;
    },
    updateHasDataEntryRole (state, status) {
      state.hasDataEntryRole = status;
    },
    updateHasDataVerificationRole (state, status) {
      state.hasDataVerificationRole = status;
    },
    updateHasQualityAssuranceRole (state, status) {
      state.hasQualityAssuranceRole = status;
    },
    updateHasReadOnlyRole (state, status) {
      state.hasReadOnlyRole = status;
    },
    updateIsLoggedIn (state, status) {
      state.isLoggedIn = status;
    }
  },
});
