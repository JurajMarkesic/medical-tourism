<template>
  <div>
    <header class="c-header">
      <a class="webaim-skipto" href="#webaim-primary-nav">Jump to Primary Navigation</a>
      <a class="webaim-skipto" href="#webaim-secondary-nav">Jump to Secondary Navigation</a>
      <a class="webaim-skipto" href="#webaim-tertiary-nav">Jump to Tertiary Navigation</a>
      <!-- <div class="c-header_button || js-toggle-button"></div> -->

      <HeaderSearchForm />

      <nav class="c-primary-nav" aria-labelledby="primary-nav-label">
        <!-- use aria-labeledby only when you have a label inside, like the one bellow -->
        <div id="primary-nav-label" hidden>Primary</div>
        <ul class="c-primary-nav_menu">
          <li class="c-primary-nav_item">
            <nuxt-link id="webaim-primary-nav" to="/" class="c-primary-nav_link">Home</nuxt-link>
          </li>
          <li class="c-primary-nav_item">
            <nuxt-link to="/about" class="c-primary-nav_link">About</nuxt-link>
          </li>
          <li class="c-primary-nav_item">
            <nuxt-link to="/blog" class="c-primary-nav_link">Blog</nuxt-link>
          </li>
          <li class="c-primary-nav_item">
            <nuxt-link to="/contact" class="c-primary-nav_link">Contact</nuxt-link>
          </li>
        </ul>
      </nav>

      <h1 class="c-header_title">
        <nuxt-link to="/" class="c-header_logo" title="Go to home page">
          <span class="c-header_logo_inner">
            <svg role="img" viewBox="0 0 40 12">
              <path class="c-logo_m" d="M4 0h4v4h4v4H8v4H4V8H0V4h4V0zM32 0h4v4h4v4h-4v4h-4V8h-4V4h4V0z" />
              <path class="c-logo_plus" d="M8 0h8l4 4 4-4h8v4h-4v4h4v4h-8V8l-4 4-4-4v4H8V8h4V4H8V0z" />
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
