<template>
  <div>
    <Register v-if="shownComponent === 'Register'"></Register>
    <ForgottenPasword v-else-if="shownComponent === 'Forgotten Password'"></ForgottenPasword>
    <Login v-else></Login>
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
