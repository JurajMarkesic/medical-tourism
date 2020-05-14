<template>
  <div>
    <form class="o-form" @submit.prevent="register()">
      <div class="o-input-wrap">
        <label class="o-label" for="REGISTER-MODAL-FIRST-NAME">First name*</label>
        <input
          id="REGISTER-MODAL-FIRST-NAME"
          v-model="formData.firstName"
          class="o-input"
          name="firstName"
          type="text"
          required=""
        />
      </div>

      <div class="o-input-wrap">
        <label class="o-label" for="REGISTER-MODAL-LAST-NAME">Last name*</label>
        <input
          id="REGISTER-MODAL-LAST-NAME"
          v-model="formData.lastName"
          class="o-input"
          name="lastName"
          type="text"
          required=""
        />
      </div>

      <div class="o-input-wrap">
        <label class="o-label" for="REGISTER-MODAL-EMAIL">Email*</label>
        <input
          id="REGISTER-MODAL-EMAIL"
          v-model="formData.email"
          class="o-input"
          name="email"
          type="email"
          required=""
        />
      </div>

      <div class="o-input-wrap">
        <label class="o-label" for="REGISTER-MODAL-PASSWORD">Password*</label>
        <input
          id="REGISTER-MODAL-PASSWORD"
          v-model="formData.password"
          class="o-input"
          name="password"
          type="password"
          required=""
        />
      </div>

      <button type="submit" class="o-button -padding">
        <span class="o-button_label">Sign up</span>
      </button>
    </form>

    <div class="o-layout -gutter || u-text-center">
      <div class="o-layout_item || o-wysiwyg">
        <a @click.prevent="changeAuthComponent('Login')">Login</a>
        <a @click.prevent="changeAuthComponent('Register')">Create new account</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      formData: {
        firstName: '',
        lastName: '',
        email: '',
        password: '',
      },
      error: null,
    };
  },
  methods: {
    async register() {
      try {
        await this.$store.dispatch('users/register', this.formData);

        await this.$auth.loginWith('local', {
          data: this.formData,
        });

        this.$store.commit('common/toggleAuthModal');
        this.$router.push('/profile');
      } catch (e) {
        this.error = e.response.data.message;
      }
    },
    changeAuthComponent(componentName) {
      this.$store.commit('common/changeShownAuthComponent', componentName);
    },
  },
};
</script>

<style></style>
