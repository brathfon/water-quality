import LabSessionsOverview from '../components/LabSessionsOverview.vue';
import Login from '../components/Login.vue';
import LandingPage from '../components/LandingPage.vue';
import SamplesForSession from '../components/SamplesForSession.vue';
import EditInSituSamplesOnDate from '../components/EditInSituSamplesOnDate.vue';
import CreateNewSession from '../components/CreateNewSession.vue';



export default [
  {path: '/', component: LandingPage, name: 'landingPage'},
  {path: '/login', component: Login, name: 'login'},
  {path: '/labSessionsOverview', component: LabSessionsOverview, name: 'labSessionsOverview'},
  {path: '/samplesForSession/:lab_id/:session_number/:lab_long_name', component: SamplesForSession, name: 'samplesForSession'},
  {path: '/editInSituSamplesOnDate/:lab_id/:session_number/:lab_long_name/:the_date', component: EditInSituSamplesOnDate, name: 'editInSituSamplesOnDate'},
  {path: '/createNewSession', component: CreateNewSession, name: 'createNewSession'}
];
