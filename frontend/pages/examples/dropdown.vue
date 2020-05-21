<template>
  <li :class="{ 'is-open': isOpen }" class="c-primary-nav_item">
    <button class="c-primary-nav_link" @click="isOpen = !isOpen">
      <span class="o-button_label">Marko</span>
      <span class="o-button_icon">+</span>
    </button>
    <ul class="c-popup">
      <li class="c-popup_item">
        <nuxt-link to="/dashboard" class="c-popup_item_link || o-button">Dashboard</nuxt-link>
      </li>
      <li class="c-popup_item">
        <button class="c-popup_item_link || o-button">Logout</button>
      </li>
    </ul>
  </li>
</template>

<script>
export default {
  data() {
    return {
      isOpen: false,
    };
  },
};
</script>

<style lang="scss"></style>
