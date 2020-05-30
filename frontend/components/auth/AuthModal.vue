<template>
  <Modal :is-open="isSelected && isAuthModalOpened" closing-mutation="common/toggleAuthModal">
    <template v-slot:title>
      <slot name="title"></slot>
    </template>
    <template v-slot:content>
      <slot name="content"></slot>
    </template>
  </Modal>
</template>

<script>
import { mapState } from 'vuex';

import Modal from '../blocks/Modal.vue';

export default {
  components: { Modal },
  props: {
    isSelected: {
      type: Boolean,
      required: true,
    },
  },
  computed: {
    ...mapState({
      isAuthModalOpened: (state) => state.common.isAuthModalOpened,
      shownAuthComponent: (state) => state.common.shownAuthComponent,
    }),
  },
};
</script>

<style></style>
