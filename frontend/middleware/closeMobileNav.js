export default (context) => {
  if (context.store.state.common.isMobileNavOpened) {
    context.store.commit('common/toggleMobileNav');
  }
};
