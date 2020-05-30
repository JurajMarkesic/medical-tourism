<template>
  <div class="o-layout_item u-2/3@from-medium">
    <div id="preview-list" class="c-preview-list">
      <div class="o-layout -gutter -reverse">
        <div class="o-layout_item u-1/3@from-medium">
          <ClinicSort />
        </div>
      </div>
      <div class="o-layout -gutter">
        <ClinicListItem v-for="clinic in clinics" :key="clinic.id" :clinic="clinic" />
      </div>
    </div>
    <ClinicPagination />
  </div>
</template>

<script>
import { mapState } from 'vuex';
import ClinicSort from './ClinicSort.vue';
import ClinicPagination from './ClinicPagination.vue';
import ClinicListItem from './ClinicListItem.vue';

export default {
  components: {
    ClinicSort,
    ClinicListItem,
    ClinicPagination,
  },
  computed: {
    ...mapState({
      clinics: (state) => state.clinics.filteredClinics,
    }),
  },
};
</script>

<style></style>
