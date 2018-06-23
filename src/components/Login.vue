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

  import ErrorAlerts from './ErrorAlerts.vue';
  import roles from '../util/roles';
  var errorMsgs = require('../util/errorMessages');
  var logging = require('../util/logging');

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
      allFieldsValid : function() {
        if ( ((this.email === "")    || (this.email === null)) &&
             ((this.password === "") || (this.password === null)) )
        {
          this.loginErrors.push(this.createSimpleErrorMsg("You must enter your email and password", "danger"));
          return false;
        }
        else if ((this.email === "") || (this.email === null)) {
          this.loginErrors.push(this.createSimpleErrorMsg("You must enter your email", "danger"));
          return false;
        }
        else if ((this.password === "") || (this.password === null)) {
            this.loginErrors.push(this.createSimpleErrorMsg("You must enter your password", "danger"));
          return false;
        }
        else {
          return true;
        }
      },
      // Creates a message from the state of the data and adds a error message
      // the the login errors
      createUserFriendlyMessage : function(token, loginSuccessful, errorArray) {

        if (!this.loginSuccessful && (this.loginErrors.length === 0)) {
          if (this.token === "NO_MATCHING_EMAIL_FOUND") {
            this.loginErrors = [];
            this.loginErrors.push(this.createSimpleErrorMsg("Your email, " + this.email + ", was not found.", "danger"));
            logging.sendSimpleLogMessage.call(this, "Login attempt with unknown email " + this.email, "warning");
          }
          else if (this.token === "PASSWORD_DOES_NOT_MATCH") {
            this.loginErrors = [];
            this.loginErrors.push(this.createSimpleErrorMsg("Your password is incorrect.", "danger"));
          }
        }
      },
      // removes a particular error in case there is more than one error
      resetError : function(id) {
        this.loginErrors.splice(id, 1);
      },
      // resets all errors by assigning an empty array
      resetErrors : function() {
        this.loginErrors = [];
      },
      resetStoreValues: function() {
        this.$store.dispatch('auth/resetAuth');
      },
      loginInfoSubmitted : function() {
        var role;
        var payload;
        var i;
        var errorMsg;
        this.loginResponse = null;
        this.loginErrors = [];
        this.loginSuccessful = false;
        this.token = null;

        // firt check to make sure all fields are filled $router
        if (! this.allFieldsValid()) {
          return;
        }

        var msg = {
          method: 'post',
          url: '/api/login',
          data: {'email' : this.email,
                 'password': this.password
          }
        }
        this.$http(msg)
        .then( (response) => {

            this.loginErrors = response.data.errors;
            this.loginSuccessful = response.data.loginSuccessful;
            this.token = response.data.token;
            // there are error conditions from the api that do not come back as errors
            this.createUserFriendlyMessage();
            this.password = "";
            if (response.data.loginSuccessful && this.token) {   // the login was successful
              payload = JSON.parse(atob(this.token.split('.')[1]));
              this.$store.commit('auth/updateUserID',  payload.userID);
              this.$store.commit('auth/updateFirstName', payload.firstName);
              this.$store.commit('auth/updateLastName',  payload.lastName);
              this.$store.commit('auth/updateRoles',     payload.roles);
              // roles
              for (i = 0; i < payload.roles.length; ++i) {
                role = payload.roles[i];
                if (role === roles.ADMINISTRATION)    {this.$store.commit('auth/updateHasAdministrationRole', true);}
                if (role === roles.DATA_ENTRY)        {this.$store.commit('auth/updateHasDataEntryRole', true);}
                if (role === roles.DATA_VERIFICATION) {this.$store.commit('auth/updateHasDataVerificationRole', true);}
                if (role === roles.QUALITY_ASSURANCE) {this.$store.commit('auth/updateHasQualityAssuranceRole', true);}
                if (role === roles.READ_ONLY)         {this.$store.commit('auth/updateHasReadOnlyRole', true);}
              }
              this.$store.commit('auth/updateIsLoggedIn', true); // finally set the overall status that there is some logged in.
              logging.sendSimpleLogMessage.call(this, payload.firstName + " " + payload.lastName + " logged in successfully", "success");
              this.$router.push('/labSessionsOverview');  // redirect to the labSessionsOverview page
            }
            else {
              this.resetStoreValues();
            }
          })
        .catch( (error) => {
          errorMsgs.handleHttpErrors.call(this, error);
          this.password = "";
          this.resetStoreValues();
        });
      }  // end of loginInfoSubmitted
    },
    created() {
      this.resetStoreValues();  // if we are at the login page, no user data should be saved
  }
}
</script>
