<template>
  <div class="is-loaded">
    <section class="o-section -padding-top">
      <div class="o-container">
        <article class="c-clinic">
          <h1 class="o-h2">Poliklinika Bagatin</h1>
          <span>Zagreb, Croatia</span>
          <div class="c-clinic_contact">
            <div class="c-clinic_contact_phone">
              <span class="u-icon">phone</span><a href="tel:+385915551234">091 555 1234</a>
            </div>
            <button class="o-button" @click="showClinicContact()">
              <span class="o-button_label">Open contact form</span>
              <span class="o-button_icon">
                <svg viewBox="0 0 20 16.8">
                  <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                </svg>
              </span>
            </button>
          </div>

          <ClinicContactModal />

          <ClinicSingleTabs />

          <ClinicSingleTabContent />

          <div class="o-layout_item u-1/2@from-small u-2/5@from-large">
            <pre>KARTA SA LOKACIJOM</pre>

            <address class="c-clinic_address">
              Bagatin<br />
              Grada Vukovara 269a/10<br />
              10000 Zagreb
            </address>
          </div>

          <div id="goto-amenities" class="c-amenities_list">
            <div class="c-amenity">
              <span class="c-amenity_icon">
                <svg viewBox="0 0 20 16.8">
                  <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                </svg>
              </span>
              <span class="c-amenity_name">Airport Pick-Up</span>
            </div>
            <div class="c-amenity">
              <span class="c-amenity_icon">
                <svg viewBox="0 0 20 16.8">
                  <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                </svg>
              </span>
              <span class="c-amenity_name">Free Wifi</span>
            </div>
            <div class="c-amenity">
              <span class="c-amenity_icon">
                <svg viewBox="0 0 20 16.8">
                  <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                </svg>
              </span>
              <span class="c-amenity_name">Hotel Booking</span>
            </div>
            <div class="c-amenity">
              <span class="c-amenity_icon">
                <svg viewBox="0 0 20 16.8">
                  <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                </svg>
              </span>
              <span class="c-amenity_name">Translation Services</span>
            </div>
          </div>

          <div>
            Opening hours Monday08:30 - 16:00 Tuesday08:30 - 16:00 Wednesday08:30 - 16:00 Thursday08:30 - 16:00
            Friday08:30 - 16:00 Saturday09:00 - 12:00 Sunday - closed
          </div>

          <ul>
            Payment methods
            <li>Credit cards</li>
            <li>Up to 12 rates</li>
            <li>CAsh discount</li>
          </ul>
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
