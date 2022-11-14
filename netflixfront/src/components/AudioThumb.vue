<template>
    <div class="thumb-wrapper">
        <img :src="require('@/assets/images/audio/' + thumb)" alt="media thumb">
    </div>
</template>

<script>
export default {
    name: "TheaudioThumb",

    props: {
        thumb: String
    }
}

</script>
