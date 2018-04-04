import LabSessionsOverview from '../components/LabSessionsOverview.vue';
import Login from '../components/Login.vue';

export default [
  {path: '/', component: Login, name: 'home'},
  {path: '/login', component: Login, name: 'login'},
  {path: '/labSessionsOverview', component: LabSessionsOverview, name: 'labSessionsOverview'}
];
