<template>
  <section class="app-wrapper">
    <header class="col-sm-12 roku-header">
      <div id="logo-title">
        <img id="logo" src="@/assets/images/rokuLogo.png" alt="Roku logo" width="150">
        <h2 id="flash-back">Flashback</h2>
              
        <nav class="float-right">
          <ul v-if="authenticated">            
            <!-- switch user -->
            <li @click="switchUser"><i class="fas fa-user-circle"></i></li>

            <!-- change settings -->
            <li><i class="fas fa-cog"></i></li>

            <!-- log out -->
            <li @click="logOut"><i class="fas fa-power-off"></i></li>					
          </ul>
        </nav>
      </div>

    </header>

    <router-view @setauth="setAuthenticated"></router-view>
  </section>
</template>

<script>
export default {
  name: "TheRokuFlashbackApp",

  created() {
    if (localStorage.getItem('user')){
      this.$router.push({name: 'UserHome', params: JSON.parse(localStorage.getItem('user')) });
    }
  },

  data() {
    return {
      authenticated: false
    }
  },

  methods: {
    setAuthenticated(status) {
      this.authenticated = status;
    },

    logOut() {
      //destroy the localstorage user object
      if (localStorage.getItem('user')) {
        // delete the item
        localStorage.removeItem('user');
      }

      // not authenticated any more
      this.setAuthenticated(false);
      this.$router.push({name:'Login'});
    },

    switchUser() {
      this.$router.push({ name: 'UserSelect'});
    }
  }
}
</script>

<style lang="scss">
  @import "@/assets/sass/login.scss";
</style>