<template>
  <ul class="c-clinic_menu">
    <li class="c-clinic_menu_item">
      <a
        class="c-clinic_menu_item_link"
        :class="{ 'is-current': shownTab == 'overview' }"
        @click="changeShownTab('overview')"
        >Overview</a
      >
    </li>
    <li class="c-clinic_menu_item">
      <a
        class="c-clinic_menu_item_link"
        :class="{ 'is-current': shownTab == 'treatments' }"
        @click="changeShownTab('treatments')"
        >Treatments</a
      >
    </li>
    <li class="c-clinic_menu_item">
      <a class="c-clinic_menu_item_link" :class="{ 'is-current': shownTab == 'staff' }" @click="changeShownTab('staff')"
        >Staff</a
      >
    </li>
    <li class="c-clinic_menu_item">
      <a
        class="c-clinic_menu_item_link"
        :class="{ 'is-current': shownTab == 'reviews' }"
        @click="changeShownTab('reviews')"
        >Reviews</a
      >
    </li>
  </ul>
</template>

<script>
import { mapState } from 'vuex';

export default {
  computed: {
    ...mapState({
      shownTab: (state) => state.clinics.shownTab,
    }),
  },
  methods: {
    changeShownTab(shownTab) {
      this.$store.commit('clinics/changeShownTab', shownTab);
    },
  },
};
</script>

<style></style>
