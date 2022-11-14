const BASE_PATH = "http://localhost:3000";
const UMS_PATH = "/users";

// add the API endpoint
const API_URL = "http://Roku-Flashback/api/index.php"
const APIAUD_URL = "http://Roku-Flashback/api/indexAudio.php"
const APISHO_URL = "http://Roku-Flashback/api/indexShow.php"

module.exports = {
    css: {
      loaderOptions: {
        sass: {
          data: `
            @import "@/assets/sass/vars.scss";
            @import "@/assets/sass/reset.scss";
            @import "@/assets/sass/main.scss";
          `
        }
      }
    },

    devServer: {
      proxy: {
        '/users': {
          target: `${BASE_PATH + UMS_PATH}`,
          changeOrigin: true,
          pathRewrite: { '^/users' : ''}
        },

        '/movies': {
          target: `${API_URL}`,
          changeOrigin: true,
          pathRewrite: { '^/movies' : ''}
        },
        
        '/audio': {
          target: `${APIAUD_URL}`,
          changeOrigin: true,
          pathRewrite: { '^/audio' : ''}
        },
        
        '/shows': {
          target: `${APISHO_URL}`,
          changeOrigin: true,
          pathRewrite: { '^/shows' : ''}
        } 
      }
    }
  };