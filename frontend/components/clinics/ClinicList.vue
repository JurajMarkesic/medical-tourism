<template>
  <div class="o-layout_item  u-2/3@from-medium u-3/4@from-big">
    <div id="preview-list" class="c-preview-list">
      <div class="o-layout -gutter">
        <ClinicListItem />
        <ClinicListItem />
      </div>
    </div>
    <ClinicPagination />
  </div>
</template>

<script>
import ClinicPagination from './ClinicPagination.vue';
import ClinicListItem from './ClinicListItem.vue';

export default {
  components: { ClinicListItem, ClinicPagination },
};
</script>

<style></style>
