<template>
  <div>
    <ClinicOverview v-if="shownTab == 'overview'" />
    <ClinicTreatments v-if="shownTab == 'treatments'" />
    <ClinicStaff v-if="shownTab == 'staff'" />
    <ClinicReviews v-if="shownTab == 'reviews'" />
  </div>
</template>

<script>
import { mapState } from 'vuex';
import ClinicOverview from './ClinicOverview.vue';
import ClinicTreatments from './ClinicTreatments.vue';
import ClinicStaff from './ClinicStaff.vue';
import ClinicReviews from './ClinicReviews.vue';

export default {
  components: {
    ClinicOverview,
    ClinicTreatments,
    ClinicStaff,
    ClinicReviews,
  },
  computed: {
    ...mapState({
      shownTab: (state) => state.clinics.shownTab,
    }),
  },
};
</script>

<style></style>
