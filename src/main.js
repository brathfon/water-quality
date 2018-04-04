import Vue from 'vue';
// maybe sometime, for now do it the old fashion way in the html
//import '../node_modules/bootstrap-sass/assets/stylesheets/_bootstrap.scss';

//import VueResource from 'vue-resource';
//Vue.use(VueResource);

import Vuex from 'vuex';
Vue.use(Vuex);

import VueRouter from 'vue-router';
Vue.use(VueRouter);

import routes from './util/routes';
const router = new VueRouter({ routes });

const store = new Vuex.Store({
  state: {
    firstName : '',
    lastName : '',
    roles : [],
    workerID : -1
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
    }
  }
})

import Banner from './components/Banner.vue';

new Vue({
  el: '#app',
  data: {},
  router,
  store,
  components: {Banner}
});
