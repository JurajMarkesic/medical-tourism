<template>
  <div>
    <header class="pj-b-header">
      <a class="webaim-skipto" href="#webaim-primary-nav">Jump to Primary Navigation</a>
      <a class="webaim-skipto" href="#webaim-secondary-nav">Jump to Secondary Navigation</a>
      <a class="webaim-skipto" href="#webaim-tertiary-nav">Jump to Tertiary Navigation</a>

      <h1 class="header__title">
        <a class="link" href="/" title="Go to home page">
          <svg class="header__logo">
            <path
              class="logo__circle-left"
              d="M79.5 79A39.5 39.5 0 1053.67 9.62a39.51 39.51 0 0111.66 66.76A39.4 39.4 0 0079.5 79z"
            />
            <path
              class="logo__circle-right"
              d="M53.67 9.62a39.51 39.51 0 0011.66 66.77A39.38 39.38 0 0139.5 86 39.5 39.5 0 1153.67 9.6z"
            />
            <path
              class="logo__overlap"
              d="M65.33 76.38A39.51 39.51 0 0153.67 9.62a39.51 39.51 0 0111.66 66.76z"
            />
          </svg>
          <span class="screen-reader-text">Header title</span>
        </a>
      </h1>

      <nav class="primary-nav" aria-labelledby="primary-nav-label">
        <!-- use aria-labeledby only when you have a label inside, like the one bellow -->
        <div id="primary-nav-label" hidden>Primary</div>
        <ul class="menu">
          <li class="primary-nav__item">
            <a class="primary-nav__link" href>Home</a>
          </li>
          <li class="primary-nav__item">
            <a class="primary-nav__link" href>About</a>
          </li>
          <li class="primary-nav__item">
            <a class="primary-nav__link" href>Blog</a>
          </li>
          <li class="primary-nav__item">
            <a class="primary-nav__link" href>Contact</a>
          </li>
        </ul>
      </nav>

      <form role="search" aria-labelledby="search-label">
        <div id="search-label" hidden>Site</div>
        <label>
          <span>Search</span>
          <input type="search" class="input" />
        </label>
        <button type="submit">Submit</button>
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
    fill: #fff;
  }
  &__circle-right {
    fill: #000;
  }
  &__overlap {
    fill: #888;
  }
}
</style>
