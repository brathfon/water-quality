<template>
  <div class="navbar navbar-inverse navbar-fixed-top">
   <div class="container">
     <div class="navbar-header">
       <a href="/" class="navbar-brand">Hui O Ka Wai Ola</a>
     </div>
     <div id="navbar-main" class="navbar-collapse collapse">
       <ul class="nav navbar-nav">
         <li v-if="showSessions">
           <router-link :to="{ name: 'labSessionsOverview'}">Sessions</router-link>
         </li>
       </ul>
       <ul class="nav navbar-nav">
         <li v-if="showSites">
           <router-link :to="{ name: 'sitesOverview'}">Sites</router-link>
         </li>
       </ul>
       <ul class="nav navbar-nav navbar-right">
         <li v-if="showLogout">
           <a href="/#" v-on:click="logout"">Logout {{userFullName}}</a>
         </li>
         <li v-if="!showLogout"">
           <router-link :to="{ name: 'login'}">Login</router-link>
         </li>
       </ul>
     </div>
   </div>
 </div>
</template>

<script>
  export default {
    computed: {
      showSessions() { return this.$store.state.auth.isLoggedIn; },
      showSites() { return this.$store.state.auth.isLoggedIn; },
      showLogout() { return this.$store.state.auth.isLoggedIn; },
      userFullName() {
        return this.$store.state.auth.firstName + " " + this.$store.state.auth.lastName;
      }
    },
    methods: {
      logout: function() {
        this.$store.dispatch('auth/resetAuth');
        // unset the token to axios to make sure no unauthorized things happen
        this.$http.defaults.headers.common['Authorization'] = '';
        this.$router.push('/#');  // redirect to the landing page
      }

    }
  }
</script>
