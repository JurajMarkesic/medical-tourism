export default {
  changeShownAuthComponent({ commit }, componentName) {
    commit('toggleAuthModal');
    setTimeout(() => {
      commit('changeShownAuthComponent', componentName);
      commit('toggleAuthModal');
    }, 200);
  },
};
