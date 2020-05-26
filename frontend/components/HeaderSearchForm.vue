<template>
  <div class="c-main-search" :class="{ 'is-show': mainSearchOpen }">
    <button class="c-main-search_toggle || o-button" @click="mainSearchOpen = !mainSearchOpen">
      <span class="o-button_icon">
        <svg viewBox="0 0 24 24">
          <path
            d="M9.857 3a6.857 6.857 0 015.387 11.1l4.899 4.9L19 20.143l-4.9-4.9A6.857 6.857 0 119.857 3zm0 12.343a5.486 5.486 0 100-10.972 5.486 5.486 0 000 10.972z"
          />
        </svg>
      </span>
    </button>

    <form role="search" aria-labelledby="search-label" @submit.prevent="search()">
      <span class="screen-reader-text">Search</span>

      <div class="c-main-search_panel">
        <label class="c-main-search_controls_wrapper" for="main-search">
          <div class="c-main-search_controls || o-container">
            <input
              id="main-search"
              v-model="searchValue"
              class="c-main-search_controls_input || o-input"
              type="search"
              placeholder="Search..."
            />

            <button type="submit" class=" c-main-search_controls_submit || o-button">
              <span class="screen-reader-text">Search</span>
              <span class="o-button_label">Search</span>
              <span class="o-button_icon" style="display: none;">
                <svg viewBox="0 0 24 24">
                  <path
                    d="M9.857 3a6.857 6.857 0 015.387 11.1l4.899 4.9L19 20.143l-4.9-4.9A6.857 6.857 0 119.857 3zm0 12.343a5.486 5.486 0 100-10.972 5.486 5.486 0 000 10.972z"
                  />
                </svg>
              </span>
            </button>
          </div>
        </label>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      mainSearchOpen: false,
      searchValue: '',
    };
  },
  methods: {
    search() {
      this.$router.push(`/clinics?search=${this.searchValue}`);
    },
  },
};
</script>
