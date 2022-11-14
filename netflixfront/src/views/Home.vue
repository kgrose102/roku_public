<template>
    <section>
        <!-- custom movie component goes here - show the current selection -->
        <section class="select">
            <button class="selection"
            @click="onlyMovies">Movies</button>
            <button class="selection"
            @click="onlyShows">TV Shows</button>
            <button class="selection"
            @click="onlyAudio">Audio</button>
        </section>
        <section class="movie-container">
            <MovieData
                :movies_title="currentMovie.movies_title"
                :movies_storyline="currentMovie.movies_storyline"
                :movies_runtime="currentMovie.movies_runtime"
                :movies_year="currentMovie.movies_year">
            </MovieData>
            <AudioData
                :audio_title="currentMovie.audio_title"
                :audio_runtime="currentMovie.audio_runtime"
                :audio_year="currentMovie.audio_year"
                class="hidden">
            </AudioData>
            <ShowsData
                :shows_title="currentMovie.shows_title"
                :shows_storyline="currentMovie.shows_storyline"
                :shows_seasons="currentMovie.shows_seasons"
                :shows_year="currentMovie.shows_year"
                class="hidden">
            </ShowsData>
            <MoviePlayer
                :movies_trailer="currentMovie.movies_trailer"
            ></MoviePlayer>
            <AudioPlayer
                :audio_sound="currentMovie.audio_sound"
                class="hidden"
            ></AudioPlayer>
            <ShowsPlayer
                :shows_trailer="currentMovie.shows_trailer"
                class="hidden"
            ></ShowsPlayer>

        </section>
        <!-- show the list of movies retrieved -->
        <section class="movie-thumbs">
            <MovieThumb
                v-for="movie in movies"
                :key="movie.movies_id"
                :thumb="movie.movies_cover"
                @click="setCurrentMovie(movie)"
            ></MovieThumb>
            <AudioThumb
                v-for="audio in audios"
                :key="audio.audios_id"
                :thumb="audio.audios_cover"
                @click="setCurrentAudio(audio)"
                class="hidden"
            ></AudioThumb>
            <ShowsThumb
                v-for="show in shows"
                :key="show.shows_id"
                :thumb="show.shows_cover"
                @click="setCurrentShow(show)"
                class="hidden"
            ></ShowsThumb>
        </section>
    </section>
</template>

<script> 
import MoviePlayer from "@/components/MoviePlayer.vue";
import MovieData from "@/components/MovieData.vue";
import MovieThumb from "@/components/MovieThumb.vue";
import ShowsPlayer from "@/components/ShowsPlayer.vue";
import ShowsData from "@/components/ShowsData.vue";
import ShowsThumb from "@/components/MovieThumb.vue";
import AudioPlayer from "@/components/AudioPlayer.vue";
import AudioData from "@/components/AudioData.vue";
import AudioThumb from "@/components/AudioThumb.vue";

export default {
    name: "TheUserHomePage",

    props: {
        frist_name: String,
        role: String,
        permissions: String,
        avatar: String
    },

    created() {
        // store this user's info
        let currentUser = {
            name: this.frist_name,
            role: this.role,
            permissions: this.permissions,
            avatar: this.avatar
        }

        if (window.localStorage) {
            localStorage.setItem('user', JSON.stringify(currentUser));
        }

        fetch('/movies')
            .then(res => res.json())
            .then(data => {
                console.log(data);
                //push the movies into our Vue instance
                this.movies = data[0];

                //set a default random movie
                this.currentMovie = data[0][Math.floor(Math.random() * data[0].length)];
            })
        
        fetch('/audio')
            .then(res => res.json())
            .then(dataAudio => {
                console.log(dataAudio);
                //push the audio into our Vue instance
                this.audios = dataAudio[0];

                //set a default random movie
                this.currentAudio = dataAudio[0][Math.floor(Math.random() * dataAudio[0].length)];
            })

        fetch('/shows')
            .then(res => res.json())
            .then(dataShows => {
                console.log(dataShows);
                //push the shows into our Vue instance
                this.shows = dataShows[0];

                //set a default random movie
                this.currentShow = dataShows[0][Math.floor(Math.random() * dataShows[0].length)];
            })
        .catch(error => console.error(error));
    },

    data() {
        return{
            movies: [],
            currentMovie: {},
            audios: [],
            currentAudio: {},
            shows: [],
            currentShow: {}
        }
    },

    methods: {
        setCurrentMovie(movie) {
            this.currentMovie = movie;
        },
        setCurrentShow(show) {
            this.currentShow = show;
        },
        setCurrentAudio(audio) {
            this.currentAudio = audio;
        },

        onlyMovies() {
            // set class hidden to all but movies

        },

        onlyAudio() {
            // set class hidden to all but Audio

        },

        onlyShows () {
            // set class hidden to all but Shows

        }

    },
    
    components: {
        MoviePlayer,
        MovieData,
        MovieThumb,
        AudioPlayer,
        AudioData,
        AudioThumb,
        ShowsPlayer,
        ShowsData,
        ShowsThumb
    }
}
</script>

<style lang="scss">
    @import "@/assets/sass/homepage.scss";
</style>