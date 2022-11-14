<template>
    <video controls muted
        :src="require('@/assets/shows/' + shows_trailer)">
    </video>
</template>

<script>
export default {
    name: "TheShowsPlayer",

    props: {
        shows_trailer: String
    }
}
</script>