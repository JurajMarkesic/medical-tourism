<template>
  <div>
    <transition name="slide-fade">
      <Register v-if="shownComponent === 'Register'"></Register>
      <ForgottenPasword v-else-if="shownComponent === 'Forgotten Password'"></ForgottenPasword>
      <Login v-else></Login>
    </transition>
  </div>
</template>

<script>
import { mapState } from 'vuex';
import Login from './Login.vue';
import Register from './Register.vue';
import ForgottenPasword from './ForgottenPasword.vue';

export default {
  components: { Login, Register, ForgottenPasword },
  computed: {
    ...mapState({
      shownComponent: (state) => state.common.shownAuthComponent,
    }),
  },
};
</script>

<style lang="scss" scoped>
.slide-fade-enter-active {
  transition: all 0.3s ease;
}
.slide-fade-leave-active {
  transition: all 0.8s cubic-bezier(1, 0.5, 0.8, 1);
}
.slide-fade-enter, .slide-fade-leave-to
/* .slide-fade-leave-active below version 2.1.8 */ {
  transform: translateX(10px);
  opacity: 0;
}
</style>
