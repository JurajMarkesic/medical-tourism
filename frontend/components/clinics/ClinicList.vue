<template>
  <div class="o-layout_item  u-2/3@from-medium u-3/4@from-big">
    <div id="preview-list" class="c-preview-list">
      <div class="o-layout -gutter">
        <ClinicListItem v-for="clinic in allClinics" :key="clinic.id" :clinic="clinic" />
      </div>
    </div>
    <ClinicPagination />
  </div>
</template>

<script>
import { mapState } from 'vuex';
import ClinicPagination from './ClinicPagination.vue';
import ClinicListItem from './ClinicListItem.vue';

export default {
  components: { ClinicListItem, ClinicPagination },
  computed: {
    ...mapState({
      allClinics: (state) => state.clinics.allClinics,
    }),
  },
};
</script>

<style></style>
