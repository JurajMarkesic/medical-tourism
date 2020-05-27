export default {
  changeAllClinics(state, allClinics) {
    state.allClinics = allClinics;
  },
  changeFilteredClinics(state, filteredClinics) {
    state.filteredClinics = filteredClinics;
  },
  changeFilters(state, localFilters) {
    state.filters = localFilters;
  },
  changeSortBy(state, sortBy) {
    state.sortBy = sortBy;
  },
  changeSelectedClinic(state, selectedClinic) {
    state.selectedClinic = selectedClinic;
  },
  changeShownTab(state, shownTab) {
    state.shownTab = shownTab;
  },
};
