import Vue from 'vue';
// maybe sometime, for now do it the old fashion way in the html
//import '../node_modules/bootstrap-sass/assets/stylesheets/_bootstrap.scss';

//import VueResource from 'vue-resource';
//Vue.use(VueResource);

import store from './store';  // shorthand for index.js file

import VueRouter from 'vue-router';
Vue.use(VueRouter);

import routes from './util/routes';
const router = new VueRouter({ routes });

import Banner from './components/Banner.vue';

new Vue({
  el: '#app',
  data: {},
  router,
  store,
  components: {Banner}
});
