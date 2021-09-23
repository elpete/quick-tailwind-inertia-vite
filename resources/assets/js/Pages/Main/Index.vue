<template>
    <div class="w-full h-screen flex justify-center items-center">
        <h2 class="text-5xl">
            {{ welcomeMessage }}
        </h2>
    </div>
</template>

<script>
import Layout from "@/Shared/Layout.vue";

export default {
    metaInfo: { title: "Home" },
    layout: Layout,
    props: {
        welcomeMessage: {
            type: String,
            required: true
        }
    }
}
</script>
