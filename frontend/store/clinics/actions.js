export default {
  async getAll(context) {
    const response = await this.$axios.get('clinics');
    context.commit('changeAllClinics', response.data);
  },
  async findByTreatmentName(context, { name }) {
    const response = await this.$axios.get(`clinics/treatment/${name}`);
    context.commit('changeAllClinics', response.data);
  },
};
