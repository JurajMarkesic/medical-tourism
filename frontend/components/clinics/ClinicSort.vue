<template>
  <form class="c-filters_container">
    <div class="c-filters_item">
      <label class="c-filters_item_label" for="sortBySelector">Sort by</label>
      <select id="sortBySelector" class="c-filters_item_select" @change="changeSort">
        <option value="relevancy">Relevancy</option>
        <option value="numReviews">Number of Reviews</option>
        <option value="az">A-Z</option>
        <option value="za">Z-A</option>
        <option value="priceLow">Price - lowest first</option>
        <option value="priceHigh">Price - highest first</option>
      </select>

      <span class="c-filters_item_arrow || o-icon">
        <svg viewBox="0 0 21 24">
          <path d="M11.188 0v20.521l8.086-8.086 1.285 1.285L10.28 24 0 13.72l1.285-1.285 8.086 8.086V0h1.817z" />
        </svg>
      </span>
    </div>
  </form>
</template>

<script>
export default {
  methods: {
    changeSort(e) {
      this.$store.dispatch('clinics/sort', e.target.value);
    },
  },
};
</script>

<style></style>
