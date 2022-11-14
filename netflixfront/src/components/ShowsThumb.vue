<template>
    <div class="thumb-wrapper">
        <img :src="require('@/assets/images/shows/' + thumb)" alt="media thumb">
    </div>
</template>

<script>
export default {
    name: "TheShowsThumb",

    props: {
        thumb: String
    }
}

</script>
