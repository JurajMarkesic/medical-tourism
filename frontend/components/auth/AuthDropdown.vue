<template>
  <li class="c-primary-nav_item" :class="{ 'is-open': isOpen }">
    <template v-if="isLoggedIn">
      <button class="c-primary-nav_link" @click="isOpen = !isOpen">
        <span class="o-button_label">{{ user.firstName }}</span>
        <span class="o-button_icon">+</span>
      </button>
      <ul class="c-popup">
        <li class="c-popup_item">
          <nuxt-link to="/dashboard" class="c-popup_item_link || o-button">Dashboard</nuxt-link>
        </li>
        <li class="c-popup_item">
          <button class="c-popup_item_link || o-button" @click="logout()">Logout</button>
        </li>
      </ul>
    </template>

    <template v-else>
      <button class="c-primary-nav_link" @click="openAuthModal()">Login/Register</button>
    </template>
  </li>
</template>

<script>
import { mapState } from 'vuex';

export default {
  data() {
    return {
      isOpen: false,
    };
  },
  computed: {
    ...mapState({
      isLoggedIn: (state) => state.auth.loggedIn,
      user: (state) => state.auth.user,
      isAuthModalOpened: (state) => state.common.isAuthModalOpened,
      shownAuthComponent: (state) => state.common.shownAuthComponent,
    }),
  },
  methods: {
    openAuthModal() {
      this.$store.commit('common/changeShownAuthComponent', 'Login');
      this.$store.commit('common/toggleAuthModal');
    },
    async logout() {
      await this.$auth.logout();
      this.isOpen = false;
    },
  },
};
</script>

<style lang="scss"></style>
