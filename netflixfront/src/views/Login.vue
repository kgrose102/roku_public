<template>
  <section class="container">
    <div class="jumbotron">
        <h1>Welcome to Flashblack!</h1>
        <p class="lead">
        Before revisiting your favourite movies, tv shows or music from yesteryear, please log in with a valid username and password.
        </p>
    </div>

    <h2 class="login-flash" v-if="signup">{{ flash }}</h2>
    <h2 class="login-flash" v-if="errors">{{ flash }}</h2>

    <section class="log-in">
      <label class="sr-only" for="inlineFormInputName">Name</label>
      <input v-model="username" type="text" class="form-control" id="inlineFormInputName" placeholder="username" required>

      <label class="sr-only" for="inlineFormPassword">Name</label>
      <input v-model="password" type="password" class="form-control" id="inlineFormPassword" placeholder="password" required>
    </section>

    <button
      v-if="signup"
      type="submit" 
      class="btn btn-primary login-submit signup"
      @click="trySignUp"
      >Sign up!
    </button>

    <button
        type="submit" 
        class="btn btn-primary login-submit"
        @click="tryLogin"
      >Go!
    </button>

  </section>
</template>

<script>

export default {
  name: 'TheLogin',

  data() {
    return {
      username: '',
      password: '',
      url: 'users/getone',
      signup: false,
      errors: false,
      flash: ''
    }
  },

  methods: {
    tryLogin() {
      this.url = '/users/getone';
      this.login();
    },

    trySignUp() {
      this.url ='/users/signup';
      this.login();
    },

    goToUsers(time, vm) {
      setTimeout(function() {
        vm.$emit('setauth', true);
        vm.$router.push({ name: 'UserSelect'});
      }, time);
    },

    login() {
      // hit the back end UMS with a user name and password
      let formData = { username: this.username, password: this.password };

      let url = this.url; // todo - fix this when available

      fetch(url, {
        method: 'POST',
        headers: {
          "Content-type" : "application/json"
        },
        body: JSON.stringify(formData)
      })

        .then(res => res.json())
        .then(data => {
          console.log(data);
          // either pass or fail our login attempt
          // if it passes then get the user data and navigate to the next view
          switch (data.action) {
            case 'add': //user doesn't exist
              this.signup = true;
              this.username = '';
              this.password = '';
              this.flash = `Hmmm... your username doesn't seem to exist. Do you want to sign up? Or you can try again.`;
              break;

            case 'added':
              this.flash = 'Added you to Roku Flashback! Enjoy! ... redirecting ...';
              this.goToUsers(2500, this);
              break; 

            case 'retry': //wrong password
              document.querySelector(`input[type=${data.field}]`).classList.add('error');
              this.error = true;
              this.flash = `Your login info is not correct. Please retry.`;
              break;
            
            default: // authentication worked, go to userselect page
              this.goToUsers(0, this);
        }
      })
      .catch(err => console.error(err));
    }
  }
}
</script>

<style lang="scss">
  @import "@/assets/sass/login.scss";
</style>
