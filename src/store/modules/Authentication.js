
const namespaced = true;

const state = {
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
  };

const mutations = {
    // ************** Authorization mutations *****************
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
  };  // end of mutations


  const actions = {
    // ************** Authorization actions *****************
    resetAuth(context) {
      context.commit('updateWorkerID',  -1);
      context.commit('updateFirstName', '');
      context.commit('updateLastName',  '');
      context.commit('updateRoles',     []);
      context.commit('updateHasAdministrationRole', false);
      context.commit('updateHasDataEntryRole', false);
      context.commit('updateHasDataVerificationRole', false);
      context.commit('updateHasQualityAssuranceRole', false);
      context.commit('updateHasReadOnlyRole', false);
      context.commit('updateIsLoggedIn', false);
    }
  };

  export default {
    namespaced, state, mutations, actions
  }
