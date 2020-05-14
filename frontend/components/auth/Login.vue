<template>
  <div>
    <form class="o-form" @submit.prevent="login()">
      <div class="o-input-wrap">
        <label class="o-label" for="LOGIN-MODAL-EMAIL">Email*</label>
        <input
          id="LOGIN-MODAL-EMAIL"
          v-model="credentials.email"
          class="o-input"
          name="email"
          type="email"
          required=""
        />
      </div>

      <div class="o-input-wrap">
        <label class="o-label" for="LOGIN-MODAL-PASSWORD">Password*</label>
        <input
          id="LOGIN-MODAL-PASSWORD"
          v-model="credentials.password"
          class="o-input"
          name="password"
          type="password"
          required=""
        />
      </div>

      <button type="submit" class="o-button -padding">
        <span class="o-button_label">Sign in</span>
      </button>
    </form>

    <div class="o-layout -gutter || u-text-center">
      <div class="o-layout_item || o-wysiwyg">
        <a @click.prevent="changeAuthComponent('Forgotten Password')">Forgotten password</a>
        <a @click.prevent="changeAuthComponent('Register')">Create new account</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      credentials: {
        email: '',
        password: '',
      },
      error: null,
    };
  },
  methods: {
    async login() {
      try {
        await this.$auth.loginWith('local', {
          data: this.credentials,
        });

        this.$store.commit('common/toggleAuthModal');
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
