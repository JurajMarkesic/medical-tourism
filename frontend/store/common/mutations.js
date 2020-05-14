export default {
  changeShownAuthComponent(state, componentName) {
    state.shownAuthComponent = componentName;
  },
  toggleAuthModal(state) {
    state.isAuthModalOpened = !state.isAuthModalOpened;
  },
};
