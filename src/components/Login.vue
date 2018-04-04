<template>
  <div class="container">
      <div class="row page-header">
        <div class="col-lg-12">
          <h3>Login</h3>
        </div>
      </div>
      <div class="col-md-offset-3 col-md-6">
        <error-alerts v-if="haveErrors" v-bind:errors="loginErrors" v-on:reset-error="resetError"></error-alerts>
     </div>

      <div class="row">
        <div class="col-md-offset-4 col-md-4">
          <div class="form-login">
              <h4 class="login-header">Welcome Back</h4>
              <input v-model="email" type="text" name="email" placeholder="email" class="form-control input-sm chat-input"><br>
              <input v-model="password" type="text" name="password" placeholder="password" class="form-control input-sm chat-input"><br>
              <div class="login-wrapper">
                <span class="group-btn">
                  <button type="submit" class="btn btn-primary btn-md" v-on:click="loginInfoSubmitted">
                    <span class="group-btn">Login</span>
                  </button>
                </span>
              </div>
          </div>
        </div>
      </div>
  </div>
</template>
<script>

//<button type="button" class="close" data-dismiss="alert">&times;</button>

  import axios from 'axios';
  import ErrorAlerts from './ErrorAlerts.vue';

  export default {
    data() {
      return {
        email : "",
        password : "",
        loginErrors: [],
        loginSuccessful: false,
        token: null
      }
    },
    components: {ErrorAlerts},
    computed: {
      haveErrors : function() {
        return this.loginErrors.length > 0;
      },
    },
    methods: {
      // we are sending a different, more user friendly message
      createSimpleErrorMsg : function(title, level) {
        var errorMsg = {};
        errorMsg['title'] = title;
        errorMsg['level'] = level;
        errorMsg['text']  = [];
        return errorMsg;
      },
      createUserFriendlyMessage : function(token, loginSuccessful, errorArray) {
        console.log("in createUserFriendlyMessage");
        console.log(this.loginSuccessful, this.loginErrors.length);
        if (!this.loginSuccessful && (this.loginErrors.length > 0)) {
          console.log("case 1 and 2");
          if (this.loginErrors[0].title === "EMAIL_PARAM_NOT_PASSED") {
            //console.log("detected email param not set");
            this.loginErrors = [];
            this.loginErrors.push(this.createSimpleErrorMsg("You must enter your email", "Danger"));
          }
          else if (this.loginErrors[0].title === "PASSWORD_PARAM_NOT_PASSED") {
            //console.log("detected password param not set");
            this.loginErrors = [];
            this.loginErrors.push(this.createSimpleErrorMsg("You must enter your password", "Danger"));
          }
        }
        else if (!this.loginSuccessful && (this.loginErrors.length === 0)) {
          if (this.token === "NO_MATCHING_EMAIL_FOUND") {
            this.loginErrors = [];
            this.loginErrors.push(this.createSimpleErrorMsg("Your email, " + this.email + ", was not found.", "Danger"));
          }
          else if (this.token === "PASSWORD_DOES_NOT_MATCH") {
            this.loginErrors = [];
            this.loginErrors.push(this.createSimpleErrorMsg("Your password is incorrect.", "Danger"));
          }

          console.log("case 3 and 5");
        }
      },
      // removes a particular error in case there is more than one error
      resetError : function(id) {
        console.log("Login:resetError id : " + id);
        this.loginErrors.splice(id, 1);
      },
      // resets all errors by assigning an empty array
      resetErrors : function() {
        this.loginErrors = [];
      },
      loginInfoSubmitted : function() {
        console.log("loginInfoSubmitted called");
        this.loginResponse = null;
        this.loginErrors = [];
        this.loginSuccessful = false;
        this.token = null;

        var msg = {
          method: 'post',
          url: '/api/login',
          data: {'email' : this.email,
                 'password': this.password
          }
        }
        //axios.get('http://localhost:3011/api/getLabSessionsOverview')
        axios(msg)
        .then( (response) => {
            //console.log("response is " + response);
            //console.log("response.data", response.data);
            //console.log("response.status", response.status);
            //console.log("response.statusText", response.statusText);
            //console.log("response.headers", response.headers);
            //console.log("response.config", response.config);

            this.loginErrors = response.data.errors;
            this.loginSuccessful = response.data.loginSuccessful;
            this.token = response.data.token;
            // there are error conditions from the api that do not come back as errors
            this.createUserFriendlyMessage();
            this.password = "";
            if (this.token) {
              var payload = JSON.parse(atob(this.token.split('.')[1]));
              console.log('payload', payload);
              this.$store.commit('updateWorkerID',  payload.workerID);
              this.$store.commit('updateFirstName', payload.firstName);
              this.$store.commit('updateLastName',  payload.lastName);
              this.$store.commit('updateRoles',     payload.roles);
            }
          })
        .catch( (error) => {
          if (error.response) {
           // The request was made and the server responded with a status code
           // that falls out of the range of 2xx
           //console.log('error.response.data', error.response.data);
           //console.log('error.response.data.errors', error.response.data.errors);
           //console.log('error.response.status', error.response.status);
           //console.log('error.response.headers', error.response.headers);

           this.loginErrors = error.response.data.errors;
           this.loginSuccessful = error.response.data.loginSuccessful;
           this.token = error.response.data.token;

            } else if (error.request) {
           // The request was made but no response was received
           // `error.request` is an instance of XMLHttpRequest in the browser and an instance of
           // http.ClientRequest in node.js
           console.log('error.request', error.request);
          } else {
           // Something happened in setting up the request that triggered an Error
           console.log('error.message', error.message);
          }
          console.log(error.config);
          this.createUserFriendlyMessage();
          this.password = "";
          this.$store.commit('updateWorkerID',  -1);
          this.$store.commit('updateFirstName', '');
          this.$store.commit('updateLastName',  '');
          this.$store.commit('updateRoles',     []);
        });
      }  // end of loginInfoSubmitted
    }
  }
</script>
