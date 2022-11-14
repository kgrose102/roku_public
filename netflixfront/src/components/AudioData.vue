<template>
    <article class="text-wrapper">
        <h1>{{ audio_title }}</h1>
        <div class="release-details">
            <h4>Runtime: {{ audio_runtime }}</h4>
            <h4>Released: {{ audio_year }}</h4>
        </div>
    </article>
</template>

<script>
export default {
    name: "TheAudioText",

    props:{
        audio_title: String,
        audio_storyline: String,
        audio_runtime: String,
        audio_year: String
    }
}
</script>

<style lang="scss">
    @import "@/assets/sass/audiotext.scss";
</style>