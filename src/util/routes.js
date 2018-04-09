import LabSessionsOverview from '../components/LabSessionsOverview.vue';
import Login from '../components/Login.vue';
import LandingPage from '../components/LandingPage.vue';

export default [
  {path: '/', component: LandingPage, name: 'landingPage'},
  {path: '/login', component: Login, name: 'login'},
  {path: '/labSessionsOverview', component: LabSessionsOverview, name: 'labSessionsOverview'}
];
