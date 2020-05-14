<template>
  <section class="c-modal" :class="{ 'is-open': isOpen }">
    <div class="c-modal_container">
      <div class="c-modal_content -smaller">
        <span class="c-modal_title">{{ shownAuthComponent }}</span>

        <slot></slot>
      </div>
    </div>

    <button class="c-modal_close" type="button" @click="close()"></button>

    <div class="c-modal_background"></div>
  </section>
</template>

<script>
import { mapState } from 'vuex';

export default {
  props: {
    isOpen: {
      type: Boolean,
      required: true,
    },
    closingMutation: {
      type: String,
      required: true,
    },
  },
  computed: {
    ...mapState({
      shownAuthComponent: (state) => state.common.shownAuthComponent,
    }),
  },
  methods: {
    close() {
      this.$store.commit(this.closingMutation);
    },
  },
};
</script>

<style lang="scss"></style>
