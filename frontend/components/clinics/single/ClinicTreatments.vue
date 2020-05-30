<template>
  <div id="goto-treatments" class="o-layout -gutter">
    <TreatmentList :treatments="selectedClinic.treatments" />
  </div>
</template>

<script>
import { mapState } from 'vuex';
import TreatmentList from './treatments/TreatmentsList.vue';

export default {
  components: { TreatmentList },
  computed: {
    ...mapState({
      selectedClinic: (state) => state.clinics.selectedClinic,
    }),
  },
};
</script>

<style></style>
