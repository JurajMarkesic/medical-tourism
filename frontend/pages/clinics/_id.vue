<template>
  <div class="is-loaded">
    <section class="o-section -padding-top">
      <div class="o-container">
        <article class="c-clinic">
          <h1 class="o-h2">Poliklinika Bagatin</h1>
          <div class="">
            <span>Zagreb, Croatia</span>
          </div>

          <ClinicSingleTabs />

          <ClinicSingleTabContent />

          <div id="goto-amenities" class="o-layout -gutter">
            <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
              amenities
            </div>

            <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
              amenities
            </div>
          </div>
        </article>
      </div>
    </section>
  </div>
</template>

<script>
import ClinicSingleTabs from '../../components/clinics/single/ClinicSingleTabs.vue';
import ClinicSingleTabContent from '../../components/clinics/single/ClinicSingleTabContent.vue';

export default {
  components: { ClinicSingleTabs, ClinicSingleTabContent },
  async fetch({ store, params }) {
    await store.dispatch('clinics/findByID', { id: params.id });
  },
};
</script>
