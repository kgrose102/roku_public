<template>
    <audio controls muted
        :src="require('@/assets/audio/' + audio_sound)">
    </audio>
</template>

<script>
export default {
    name: "TheShowsPlayer",

    props: {
        audio_sound: String
    }
}
</script>