<template>
    <video controls muted
        :src="require('@/assets/video/' + movies_trailer)">
    </video>
</template>

<script>
export default {
    name: "TheVideoPlayer",

    props: {
        movies_trailer: String
    }
}
</script>