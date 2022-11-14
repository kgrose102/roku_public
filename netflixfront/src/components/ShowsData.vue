<template>
    <article class="text-wrapper">
        <h1>{{ shows_title }}</h1>
        <p>{{ shows_storyline }}</p>
        <div class="release-details">
            <h4>Number of Seasons: {{ shows_seasons }}</h4>
            <h4>Released: {{ shows_year }}</h4>
        </div>
    </article>
</template>

<script>
export default {
    name: "TheShowsText",

    props:{
        shows_title: String,
        shows_storyline: String,
        shows_seasons: String,
        shows_year: String
    }
}
</script>

<style lang="scss">
    @import "@/assets/sass/showstext.scss";
</style>