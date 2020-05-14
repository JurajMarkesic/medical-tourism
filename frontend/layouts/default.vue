<template>
  <div class="page-wrapper" :class="{ 'is-ready': isReady }">
    <Header />
    <nuxt />
    <Footer />
  </div>
</template>

<script>
import Header from '../components/layout/Header.vue';
import Footer from '../components/layout/Footer.vue';

export default {
  components: {
    Header,
    Footer,
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
