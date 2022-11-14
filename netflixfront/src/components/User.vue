<template>
    <article class="card-rounded">
        <div class="card-body text-center" @click="navToHome">
            <img :src="require('@/assets/images/' + user.avatar)" class="rounded-circle img-fluid" alt="avatar">
            <h2>{{ user.first_name }}</h2>
        </div>
    </article>
</template>

<script>
export default {
    name: "TheUserComponent",

    props: {
        user: Object
    },

    methods: {
        navToHome() {
            // go to the user home view
            this.$router.push({name: "UserHome", params: this.user});
        }
    }
}
</script>