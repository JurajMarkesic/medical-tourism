export default {
  changeIsMobile(state, isMobile) {
    state.isMobile = isMobile;
  },
  changeShownAuthComponent(state, componentName) {
    state.shownAuthComponent = componentName;
  },
  toggleAuthModal(state) {
    state.isAuthModalOpened = !state.isAuthModalOpened;
  },
  toggleMobileNav(state) {
    state.isMobileNavOpened = !state.isMobileNavOpened;
  },
};
