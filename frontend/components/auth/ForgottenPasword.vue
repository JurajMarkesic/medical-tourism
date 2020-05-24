<template>
  <div>
    <h4>eeeh dodaj button koji im salje mail plus neki disclaimer text koji objasnjava proces. Ovo cemo na kraju.</h4>
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
  methods: {
    changeAuthComponent(componentName) {
      this.$store.commit('common/changeShownAuthComponent', componentName);
    },
  },
};
</script>

<style></style>
