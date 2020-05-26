<template>
  <div class="is-loaded">
    <section class="o-section -padding-top" data-colorset="generic">
      <div class="o-container">
        <div class="o-layout -gutter -reverse">
          <div class="o-layout_item u-1/3@from-medium u-1/4@from-big">
            <ClinicSort />
          </div>
        </div>
        <div class="o-layout -gutter">
          <ClinicFilter />

          <ClinicList />
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import ClinicFilter from '../../components/clinics/ClinicFilter.vue';
import ClinicSort from '../../components/clinics/ClinicSort.vue';
import ClinicList from '../../components/clinics/ClinicList.vue';

export default {
  components: {
    ClinicFilter,
    ClinicSort,
    ClinicList,
  },
  async fetch({ store, query }) {
    if (query.search) {
      await store.dispatch('clinics/findByTreatmentName', { name: query.search });
    } else {
      await store.dispatch('clinics/getAll');
    }
  },
  watchQuery: ['search'],
};
</script>
