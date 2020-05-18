<template>
  <div class="page-wrapper">
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
    this.initResizeListeners();
  },
  methods: {
    initResizeListeners() {
      if (matchMedia) {
        const mq = window.matchMedia('(min-width: 992px)');

        mq.addListener(() => {
          this.$store.commit('common/changeIsMobile', window.innerWidth <= 1024);
        });
      } else {
        window.addEventListener('resize', () => {
          this.$store.commit('common/changeIsMobile', window.innerWidth <= 1024);
        });
      }
    },
  },
};
</script>
