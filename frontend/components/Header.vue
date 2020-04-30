<template>
  <div>
    <header class="header">
      <a class="webaim-skipto" href="#webaim-primary-nav">Jump to Primary Navigation</a>
      <a class="webaim-skipto" href="#webaim-secondary-nav">Jump to Secondary Navigation</a>
      <a class="webaim-skipto" href="#webaim-tertiary-nav">Jump to Tertiary Navigation</a>

      <h1 class="header__title">
        <nuxt-link to="/" class="link" title="Go to home page">
          <svg class="header__logo">
            <path
              class="logo__circle-left"
              d="M79.5 79A39.5 39.5 0 1053.67 9.62a39.51 39.51 0 0111.66 66.76A39.4 39.4 0 0079.5 79z"
            />
            <path
              class="logo__circle-right"
              d="M53.67 9.62a39.51 39.51 0 0011.66 66.77A39.38 39.38 0 0139.5 86 39.5 39.5 0 1153.67 9.6z"
            />
            <path class="logo__overlap" d="M65.33 76.38A39.51 39.51 0 0153.67 9.62a39.51 39.51 0 0111.66 66.76z" />
          </svg>
          <span class="screen-reader-text">Header title</span>
        </nuxt-link>
      </h1>

      <nav class="primary-nav" aria-labelledby="primary-nav-label">
        <!-- use aria-labeledby only when you have a label inside, like the one bellow -->
        <div id="primary-nav-label" hidden>Primary</div>
        <ul class="primary-nav__menu">
          <li class="primary-nav__item">
            <nuxt-link to="/" class="primary-nav__link">Home</nuxt-link>
          </li>
          <li class="primary-nav__item">
            <nuxt-link to="/about" class="primary-nav__link">About</nuxt-link>
          </li>
          <li class="primary-nav__item">
            <nuxt-link to="/blog" class="primary-nav__link">Blog</nuxt-link>
          </li>
          <li class="primary-nav__item">
            <nuxt-link to="/contact" class="primary-nav__link">Contact</nuxt-link>
          </li>
        </ul>
      </nav>

      <form role="search" aria-labelledby="search-label">
        <div id="search-label" hidden>Site</div>
        <label>
          <span class="screen-reader-text">Search</span>
          <span class="input search">
            <span class="icon input__icon">
              <svg class="icon__svg">
                <path
                  d="M9.857 3a6.857 6.857 0 015.387 11.1l4.899 4.9L19 20.143l-4.9-4.9A6.857 6.857 0 119.857 3zm0 12.343a5.486 5.486 0 100-10.972 5.486 5.486 0 000 10.972z"
                />
              </svg>
            </span>
            <span class="field">
              <input type="search" placeholder="Search..." class="input__field" />
              <span class="field__bottom"></span>
            </span>
            <button class="button search__button" type="submit">
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
    </header>
  </div>
</template>

<script>
export default {
  name: 'Header',
};
</script>

<style lang="scss">
.header {
  &__logo {
    width: 119px;
    height: 86px;
  }
}
.logo {
  &__circle-left {
    fill: #f06;
  }
  &__circle-right {
    fill: #000;
  }
  &__overlap {
    fill: #888;
  }
}
</style>
