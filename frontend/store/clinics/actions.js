export default {
  findByTreatmentName(context, name) {
    return this.$axios.get(`clinics/treatment/${name}`);
  },
};
