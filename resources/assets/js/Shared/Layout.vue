<template>
  <div id="app" class="antialiased text-gray-900">
    <div class="bg-gray-200 min-h-screen">
      <Navbar />
      <div class="container mx-auto mt-4">
          <slot></slot>
      </div>
    </div>
  </div>
</template>

<script>
import Navbar from "@/Shared/Navbar.vue";

export default {
    components: {
        Navbar
    }
}
</script>
