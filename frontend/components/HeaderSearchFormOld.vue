<template>
  <form role="search" aria-labelledby="search-label">
    <div id="search-label" hidden>Site</div>
    <label>
      <span class="screen-reader-text">Search</span>
      <span class="input search">
        <span class="field">
          <input
            type="search"
            placeholder="Search..."
            class="input__field search__input"
            @focus="fieldIsFocused = true"
            @blur="fieldIsFocused = false"
          />
          <span class="field__bottom || u-transition-primary" :class="{ 'is-focused': fieldIsFocused }"></span>
        </span>

        <span class="icon input__icon || u-transition-primary" :class="{ 'is-focused': fieldIsFocused }">
          <svg class="icon__svg">
            <path
              d="M9.857 3a6.857 6.857 0 015.387 11.1l4.899 4.9L19 20.143l-4.9-4.9A6.857 6.857 0 119.857 3zm0 12.343a5.486 5.486 0 100-10.972 5.486 5.486 0 000 10.972z"
            />
          </svg>
        </span>

        <button
          type="submit"
          class="button search__button || u-transition-primary"
          :class="{ 'is-focused': fieldIsFocused }"
          @focus="fieldIsFocused = true"
          @blur="fieldIsFocused = false"
          @click="fieldIsFocused = true"
        >
          <span class="screen-reader-text">Search</span>
          <span class="icon search__icon">
            <svg class="icon__svg button__icon">
              <path
                d="M9.857 3a6.857 6.857 0 015.387 11.1l4.899 4.9L19 20.143l-4.9-4.9A6.857 6.857 0 119.857 3zm0 12.343a5.486 5.486 0 100-10.972 5.486 5.486 0 000 10.972z"
              />
            </svg>
          </span>
        </button>
      </span>
    </label>
  </form>
</template>

<script>
export default {
  name: 'SearchFormHeader',
  data() {
    return {
      fieldIsFocused: false,
    };
  },
};
</script>
