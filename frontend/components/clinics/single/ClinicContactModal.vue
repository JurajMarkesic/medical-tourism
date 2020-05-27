<template>
  <Modal :is-open="showContactModal" closing-mutation="clinics/toggleContactModal">
    <template v-slot:title>
      Contact
    </template>
    <template v-slot:content>
      <form ref="contactForm" class="o-form" @submit.prevent="contact($event)">
        <div class="o-input-wrap">
          <label class="o-label" for="CONTACT-MODAL-EMAIL">Email*</label>
          <input id="CONTACT-MODAL-EMAIL" v-model="form.email" class="o-input" name="email" type="email" />
        </div>

        <div class="o-input-wrap">
          <label class="o-label" for="CONTACT-MODAL-NAME">Name*</label>
          <input id="CONTACT-MODAL-NAME" v-model="form.name" class="o-input" name="name" type="text" />
        </div>

        <div class="o-input-wrap">
          <label class="o-label" for="CONTACT-MODAL-BODY">Message*</label>
          <textarea id="CONTACT-MODAL-BODY" v-model="form.body" class="o-input" name="body" type="text"></textarea>
        </div>

        <button type="submit" class="o-button -padding">
          <span class="o-button_label">Send</span>
        </button>
      </form>
    </template>
  </Modal>
</template>

<script>
import { mapState } from 'vuex';

import Modal from '../../blocks/Modal.vue';

export default {
  components: { Modal },
  data() {
    return {
      form: {
        email: '',
        name: '',
        body: '',
      },
    };
  },
  computed: {
    ...mapState({
      showContactModal: (state) => state.clinics.showContactModal,
      selectedTreatment: (state) => state.clinics.selectedTreatment,
    }),
  },
  methods: {
    contact() {
      let message = this.form.body;
      if (this.selectedTreatment) {
        message = `Contacted for treatment: ${this.selectedTreatment.name}. \n ${this.form.body}`;
      }

      this.$store.dispatch('clinics/contact', {
        ...this.form,
        body: message,
      });
    },
  },
};
</script>

<style></style>
