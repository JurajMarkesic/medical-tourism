<template>
  <div>
    <header class="c-header">
      <a class="webaim-skipto" href="#webaim-primary-nav">Jump to Primary Navigation</a>
      <a class="webaim-skipto" href="#webaim-secondary-nav">Jump to Secondary Navigation</a>
      <a class="webaim-skipto" href="#webaim-tertiary-nav">Jump to Tertiary Navigation</a>
      <!-- <div class="c-header_button || js-toggle-button"></div> -->

      <HeaderSearchForm />

      <nav class="primary-nav" aria-labelledby="primary-nav-label">
        <!-- use aria-labeledby only when you have a label inside, like the one bellow -->
        <div id="primary-nav-label" hidden>Primary</div>
        <ul class="primary-nav__menu">
          <li class="primary-nav__item">
            <nuxt-link id="webaim-primary-nav" to="/" class="primary-nav__link">Home</nuxt-link>
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

      <h1 class="c-header_title">
        <nuxt-link to="/" class="c-header_logo" title="Go to home page">
          <span class="c-header_logo_inner">
            <svg role="img" viewBox="0 0 119 86">
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
          </span>
          <span class="u-screen-reader-text">Name of the company</span>
        </nuxt-link>
      </h1>
    </header>
  </div>
</template>

<script>
import HeaderSearchForm from '../HeaderSearchForm.vue';

export default {
  name: 'TheHeader',
  components: {
    HeaderSearchForm,
  },
};
</script>
