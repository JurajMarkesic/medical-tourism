<template>
  <footer class="c-footer">
    <div class="o-container">
      <div class="o-layout -gutter -middle">
        <div class="o-layout_item u-1/2@from-medium">
          <div class="c-contact_panel">
            <div class="o-layout -gutter">
              <div class="o-layout_item u-1/2@from-medium">
                <nuxt-link to="/" class="c-header_logo" title="Go to home page">
                  <span class="c-header_logo_inner">
                    <svg role="img" viewBox="0 0 40 12">
                      <path class="c-logo_m" d="M4 0h4v4h4v4H8v4H4V8H0V4h4V0zM32 0h4v4h4v4h-4v4h-4V8h-4V4h4V0z" />
                      <path class="c-logo_plus" d="M8 0h8l4 4 4-4h8v4h-4v4h4v4h-8V8l-4 4-4-4v4H8V8h4V4H8V0z" />
                    </svg>
                  </span>
                  <span class="u-screen-reader-text">Name of the company</span>
                </nuxt-link>

                <address class="c-footer_contact_info">
                  MFC<br />
                  Ulica Juraja Markešića 68<br />
                  80240, Tomislavgrad
                </address>

                <p class="c-footer_copyright">&copy; All rights reserved 2020, MFC</p>
              </div>

              <div class="o-layout_item u-1/2@from-medium">
                <ul class="c-footer_contact_info -phone-fax-email">
                  <li>
                    <div itemscope itemtype="https://schema.org/MFC">
                      <h1 class="o-h2" itemprop="name">MFC</h1>
                      <span class="u-icon">phone</span>
                      <span itemprop="telephone"><a href="tel:+385915551234">091 555 1234</a></span>
                    </div>
                  </li>
                  <li><span class="u-icon">icon</span><a href="mailto:info@mfc.com">info@mfc.com</a></li>
                </ul>

                <ul class="c-footer_socials">
                  <li>
                    <a
                      class=""
                      href="https://www.linkedin.com/company/mfc/"
                      target="_blank"
                      rel="noreferrer noopener"
                      title="MFC LinkedIn link"
                    >
                      <span class="u-icon">in</span>
                      <span class="u-screen-reader-text">visit us on linkedin</span>
                    </a>
                  </li>
                  <li>
                    <a
                      class=""
                      href="https://twitter.com/mfc"
                      target="_blank"
                      rel="noreferrer noopener"
                      title="MFC Twitter link"
                    >
                      <span class="u-icon">tw</span>
                      <span class="u-screen-reader-text">visit us on twitter</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="o-layout_item u-1/2@from-medium">
          <ul class="c-footer_nav_list">
            <li>
              <nuxt-link to="/">home</nuxt-link>
            </li>
            <li>
              <nuxt-link to="/about">about</nuxt-link>
            </li>
            <li>
              <nuxt-link to="/blog">blog</nuxt-link>
            </li>
            <li>
              <nuxt-link to="/contact">contact</nuxt-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
export default {};
</script>
