<template>
  <div class="page-wrapper" :class="{ 'is-ready': isReady }">
    <TheHeader />
    <nuxt />
    <TheFooter />
  </div>
</template>

<script>
import TheHeader from '../components/Page/Header.vue';
import TheFooter from '../components/Page/Footer.vue';

export default {
  components: {
    TheHeader,
    TheFooter,
  },
  data() {
    return {
      isReady: false,
    };
  },
  mounted() {
    setTimeout(this.pageLoaded, 0);
  },
  methods: {
    pageLoaded() {
      this.isReady = true;
    },
  },
};
</script>
