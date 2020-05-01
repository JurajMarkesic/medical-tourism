<template>
  <div>
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
};
</script>
