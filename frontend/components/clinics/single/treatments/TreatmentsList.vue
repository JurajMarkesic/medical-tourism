<template>
  <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
    <div class="o-table">
      <TreatmentListItem v-for="treatment in treatments" :key="treatment.id" :treatment="treatment" />
    </div>
  </div>
</template>

<script>
import TreatmentListItem from './TreatmentsListItem.vue';

export default {
  components: { TreatmentListItem },
  props: {
    treatments: {
      type: Array,
      required: true,
    },
  },
};
</script>

<style></style>
