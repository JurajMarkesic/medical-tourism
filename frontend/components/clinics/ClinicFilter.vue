<template>
  <div class="o-layout_item u-1/3@from-medium">
    <div class="c-filters || u-margin-bottom-4">
      <span class="o-label || u-margin-bottom">Filter by:</span>
      <form class="c-filters_container">
        <div class="c-filters_item -fullwidth">
          <input
            id="id-display-priced-listings"
            v-model="localFilters.priceOnly"
            class="o-checkbox"
            type="checkbox"
            @change="changeFilter()"
          />
          <label class="c-filters_item_checkbox_label || o-checkbox-label" for="id-display-priced-listings">
            <span class="o-checkbox-label_text">Display priced listings only</span>
          </label>
        </div>
        <div class="c-filters_item">
          <label class="c-filters_item_label" for="citySelector">Choose a City</label>
          <select id="citySelector" v-model="localFilters.city" class="c-filters_item_select" @change="changeFilter()">
            <option :value="false">Choose a City</option>
            <option value="zagreb">Zagreb</option>
            <option value="bjelovar">Bjelovar</option>
            <option value="split">Split</option>
            <option value="rijeka">Rijeka</option>
            <option value="osijek">Osijek</option>
            <option value="varazdin">Varaždin</option>
            <option value="dubrovnik">Dubrovnik</option>
          </select>

          <span class="c-filters_item_arrow || o-icon">
            <svg viewBox="0 0 21 24">
              <path d="M11.188 0v20.521l8.086-8.086 1.285 1.285L10.28 24 0 13.72l1.285-1.285 8.086 8.086V0h1.817z" />
            </svg>
          </span>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      localFilters: {
        city: false,
        priceOnly: false,
      },
    };
  },
  created() {
    this.changeFilter();
  },
  methods: {
    changeFilter() {
      this.$store.dispatch('clinics/filter', this.localFilters);
    },
  },
};
</script>

<style></style>
