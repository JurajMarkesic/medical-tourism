import { addRelevancyScore } from '../../utils';

export default {
  async getAll({ commit }) {
    const response = await this.$axios.get('clinics');
    const clinics = addRelevancyScore(response.data);

    commit('changeAllClinics', clinics);
    commit('changeFilteredClinics', clinics);
  },
  async findByTreatmentName({ commit }, { name }) {
    const response = await this.$axios.get(`clinics/treatment/${name}`);
    const clinics = addRelevancyScore(response.data);

    commit('changeAllClinics', clinics);
    commit('changeFilteredClinics', clinics);
  },
  async findByID({ commit }, { id }) {
    const response = await this.$axios.get(`clinics/${id}`);

    commit('changeSelectedClinic', response.data);
  },
  filter({ state, commit, dispatch }, filters) {
    // Using JSON parse/stringify to clone an object so no vue warning is thrown when mutated
    commit('changeFilters', JSON.parse(JSON.stringify(filters)));

    let filteredClinics = state.allClinics;

    if (filters.city) {
      filteredClinics = filteredClinics.filter((clinic) => clinic.city.name === filters.city);
    }

    if (filters.priceOnly) {
      filteredClinics = filteredClinics.filter(
        (clinic) => clinic.treatments[0] && !Number.isNaN(clinic.treatments[0].price),
      );
    }

    commit('changeFilteredClinics', filteredClinics);
    dispatch('sort', state.sortBy);
  },
  sort({ state, commit }, sortBy) {
    commit('changeSortBy', sortBy);

    const filteredClinics = JSON.parse(JSON.stringify(state.filteredClinics)).sort((a, b) => {
      let comparisonValue = true;

      if (sortBy === 'relevancy') {
        comparisonValue = a.relevancyScore - b.relevancyScore;
      }

      if (sortBy === 'numReviews') {
        comparisonValue = b.reviews.length - a.reviews.length;
      }

      if (sortBy === 'az') {
        comparisonValue = a.name.localeCompare(b.name);
      }

      if (sortBy === 'za') {
        comparisonValue = b.name.localeCompare(a.name);
      }

      if (sortBy === 'priceLow') {
        if (a.treatments[0] && a.treatments[0].price && b.treatments[0] && b.treatments[0].price) {
          comparisonValue = a.treatments[0].price - b.treatments[0].price;
        } else if (a.treatments[0] && a.treatments[0].price && !(b.treatments[0] && b.treatments[0].price)) {
          comparisonValue = -1;
        } else if (!(a.treatments[0] && a.treatments[0].price) && b.treatments[0] && b.treatments[0].price) {
          comparisonValue = 1;
        } else {
          comparisonValue = 0;
        }
      }

      if (sortBy === 'priceHigh') {
        if (a.treatments[0] && a.treatments[0].price && b.treatments[0] && b.treatments[0].price) {
          comparisonValue = b.treatments[0].price - a.treatments[0].price;
        } else if (a.treatments[0] && a.treatments[0].price && !(b.treatments[0] && b.treatments[0].price)) {
          comparisonValue = -1;
        } else if (!(a.treatments[0] && a.treatments[0].price) && b.treatments[0] && b.treatments[0].price) {
          comparisonValue = 1;
        } else {
          comparisonValue = 0;
        }
      }

      return comparisonValue;
    });

    commit('changeFilteredClinics', filteredClinics);
  },
  async contact({ state, commit }, payload) {
    await this.$axios.post('contact', { ...payload, clinic: state.selectedClinic });
    commit('toggleContactModal');
  },
};
