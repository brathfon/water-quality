<template>
  <div class="navbar navbar-inverse navbar-fixed-top">
   <div class="container">
     <div class="navbar-header">
       <a href="/" class="navbar-brand">Hui O Ka Wai Ola</a>
     </div>
     <div id="navbar-main" class="navbar-collapse collapse">
       <ul class="nav navbar-nav">
         <li v-if="showSessions">
           <a href="/#/labSessionsOverview/">Sessions</a>
         </li>
         <li v-if="showLogout">
           <a href="/#/login/">Logout</a>
         </li>
       </ul>
     </div>
   </div>
 </div>
</template>

<script>
  export default {
    computed: {
      showSessions() { return this.$store.state.isLoggedIn; },
      showLogout() { return this.$store.state.isLoggedIn; },
      testIt() {return true;}
    }
  }
</script>
