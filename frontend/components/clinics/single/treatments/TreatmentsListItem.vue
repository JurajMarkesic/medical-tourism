<template>
  <div class="o-table_row">
    <div class="o-table_row_treatment">
      <span class="o-table_row_treatment_name">{{ treatment.name }}</span>
      <span class="o-table_row_treatment_price">{{ treatment.price }} €</span>
    </div>
    <a href="" class="o-table_row_treatment_button || o-button" type="button" aria-label="Enquire now">
      <span class="o-button_label" @click.prevent="contact()">Enquire now</span>
      <span class="o-button_icon">
        <svg viewBox="0 0 20 16.8">
          <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
        </svg>
      </span>
    </a>
  </div>
</template>

<script>
export default {
  props: {
    treatment: {
      type: Object,
      required: true,
    },
  },
  methods: {
    contact() {
      this.$store.commit('clinics/changeSelectedTreatment', this.treatment);
      this.$store.commit('clinics/toggleContactModal');
    },
  },
};
</script>

<style></style>
