<template>
  <div class="is-loaded">
    <section class="o-section -padding-top">
      <div class="o-container">
        <article class="c-clinic">
          <h1 class="o-h2">Poliklinika Bagatin</h1>
          <div>
            <span>Zagreb, Croatia</span>
          </div>
          <div>
            <button class="o-button -padding" @click="showClinicContact()">CONTACT</button>
          </div>

          <ClinicContactModal />

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
import ClinicContactModal from '../../components/clinics/single/ClinicContactModal.vue';

export default {
  components: { ClinicSingleTabs, ClinicSingleTabContent, ClinicContactModal },
  async fetch({ store, params }) {
    await store.dispatch('clinics/findByID', { id: params.id });
  },
  methods: {
    showClinicContact() {
      this.$store.commit('clinics/toggleContactModal');
    },
  },
};
</script>
