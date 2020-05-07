<template>
  <div>
    <div class="herrrrro" :class="{ 'is-loaded': isLoaded }">
      <header class="c-site-header">
        <a href="" class="c-site-header_logo  ">
          <svg viewBox="0 0 340 279">
            <path
              d="M170,107c-32.53,0-59,26.47-59,59c0,32.53,26.47,59,59,59s59-26.47,59-59C229,133.47,202.53,107,170,107z M170,214 c-26.47,0-48-21.53-48-48c0-26.47,21.53-48,48-48s48,21.53,48,48C218,192.47,196.47,214,170,214z"
            />
            <path d="M292,80h-13c-3.42,0-6,2.58-6,6s2.58,6,6,6h13c3.42,0,6-2.58,6-6S295.42,80,292,80z" />
            <path
              d="M321,54h-73.62L226.1,10.44C222.43,4.02,215.87,0,209,0h-77c-7.79,0-14.33,3.98-17.08,10.39L93.62,54H78v-8 c0-10.48-8.52-19-19-19H46c-10.48,0-19,8.52-19,19v8h-8C8.52,54,0,62.52,0,73v187c0,10.48,8.52,19,19,19h302c10.48,0,19-8.52,19-19 V73C340,62.52,331.48,54,321,54z M125.11,15.55c1.43-2.85,4-4.55,6.89-4.55h77c2.37,0,5.72,2.21,6.89,4.55L234.6,54H105.36 L125.11,15.55z M38,46c0-4.56,3.44-8,8-8h13c4.56,0,8,3.44,8,8v8H38V46z M329,260c0,3.38-3.21,7-8,7H19c-4.79,0-8-3.62-8-7V73 c0-4.56,3.44-8,8-8h302c4.56,0,8,3.44,8,8V260z"
            />
            <path
              d="M170,80c-22.84,0-44.42,9.08-60.79,25.58C92.95,121.97,84,143.42,84,166c0,47.42,38.58,86,86,86s86-38.58,86-86 c0-22.58-8.95-44.03-25.21-60.42C214.42,89.08,192.84,80,170,80z M222.7,219.08C208.44,233.22,189.72,241,170,241 c-40.8,0-74-33.64-74-75c0-19.99,7.74-38.66,21.8-52.59C131.74,99.6,150.28,92,170,92c41.35,0,75,33.2,75,74 C245,185.99,237.08,204.84,222.7,219.08z"
            />
          </svg>
        </a>
        <div class="c-site-header_main">
          <a href="" class="c-site-header_main_link -left u-color-white">Support our mission</a>
          <a href="" class="c-site-header_main_link -right u-color-primary">Become a donor</a>
        </div>
        <a href="" class="c-site-header_langswitcher o-langswitcher u-color-primary">fr</a>
      </header>
      <div class="o-section || o-page_top c-header-page -small-padding-mobile -no-pointer-events">
        <div class="o-container">
          <div class="c-header-page_main">
            <div class="o-layout -gutter u-margin-bottom">
              <div class="o-layout_item">
                <h1 class="o-h1 o-title" :class="{ 'is-show': isShow }" data-scroll="">
                  <span class="o-title_row">
                    <span class="o-title_row_inner">
                      FAIR FIGHT
                    </span>
                  </span>

                  <span class="o-title_row">
                    <span class="o-title_row">
                      <span class="o-title_row_inner">
                        FOR ALL
                      </span>
                    </span>
                  </span>
                </h1>
              </div>
            </div>

            <div class="o-layout -gutter -flex@from-medium">
              <div class="o-layout_item u-3/4 u-1/2@from-small u-1/4@from-medium">
                <a class="c-header-page_main_image-wrap" href="#">
                  <figure class="o-image -parallax">
                    <div class="" :class="{ 'is-show': isShow }">
                      <div
                        class="o-image_media || c-header-page_main_image"
                        style="background-image: url('https://swabtheworld.com/assets/images/layout/home-main-1.png')"
                      ></div>
                    </div>
                  </figure>
                </a>
              </div>

              <div class="o-layout_item u-3/4@from-medium || u-relative">
                <span class="c-header-page_main_caption -right || u-color-white">
                  <span class="c-header-page_main_caption_inner">Give a blood cancer patient the kiss of life</span>
                </span>

                <div class="c-header-page_carousel-overlay">
                  <div class="c-header-page_carousel-overlay_item">
                    <div class="c-carousel-header-count">
                      <span>0</span>
                      <div class="c-carousel-header-count_slider || swiper-carousel">
                        <div class="c-carousel-header-count_slider_wrapper || swiper-wrapper">
                          <span class="swiper-slide c-carousel-header-count_slide" style="height: 23px;">1</span
                          ><span
                            class="swiper-slide c-carousel-header-count_slide swiper-slide-prev"
                            style="height: 23px;"
                            >2</span
                          ><span
                            class="swiper-slide c-carousel-header-count_slide swiper-slide-active"
                            style="height: 23px;"
                            >3</span
                          >
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                      </div>
                      <span> — 0</span>
                    </div>

                    <div class="c-header-page_carousel-text-wrap">
                      <div
                        class="c-header-page_carousel-text || swiper-container swiper-container-initialized swiper-container-horizontal"
                        data-module-carouselheadertext="m4"
                      >
                        <div class="c-header-page_carousel-text_wrapper || swiper-wrapper">
                          <div
                            class="c-header-page_carousel-text_slide || swiper-slide"
                            style="width: 215px; margin-right: 20px;"
                          >
                            <p>WE'RE ALL CREATED EQUAL</p>
                          </div>
                          <div
                            class="c-header-page_carousel-text_slide || swiper-slide swiper-slide-prev"
                            style="width: 215px; margin-right: 20px;"
                          >
                            <p>UNTIL BLOOD CANCER STRIKES</p>
                          </div>
                          <div
                            class="c-header-page_carousel-text_slide || swiper-slide swiper-slide-active"
                            style="width: 215px; margin-right: 20px;"
                          >
                            <p>LET'S END THIS FATAL IMBALANCE</p>
                          </div>
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                      </div>
                    </div>
                  </div>

                  <div class="c-header-page_carousel-overlay_item">
                    <div class="c-carousel-header-count" data-module-carouselheadercount="m5">
                      <span>0</span>
                      <div
                        class="c-carousel-header-count_slider || swiper-carousel swiper-container-initialized swiper-container-vertical"
                      >
                        <div class="c-carousel-header-count_slider_wrapper || swiper-wrapper">
                          <span class="swiper-slide c-carousel-header-count_slide" style="height: 23px;">1</span
                          ><span
                            class="swiper-slide c-carousel-header-count_slide swiper-slide-prev"
                            style="height: 23px;"
                            >2</span
                          ><span
                            class="swiper-slide c-carousel-header-count_slide swiper-slide-active"
                            style="height: 23px;"
                            >3</span
                          >
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                      </div>
                      <span> — 0</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="c-header-page_media" :class="{ 'is-show': isShow }">
        <!-- SLIDER HERE -->
        <!-- IS CURRENTLY POSITIONED IN ABSOLUTE -->
        <div class="c-background-progress"></div>

        <div class="c-header-page_media_inner">
          <div
            class="c-header-page_carousel swiper-carousel swiper-container-initialized swiper-container-horizontal"
            style="cursor: grab;"
          >
            <div class="c-header-page_carousel_wrapper swiper-wrapper">
              <div class="c-header-page_carousel_wrapper_slide swiper-slide" style="width: 960px; margin-right: 40px;">
                <div
                  class="c-header-page_media_lottie"
                  data-lottieheader-file="vague"
                  data-module-lottieheader="m8"
                ></div>
              </div>

              <div
                class="c-header-page_carousel_wrapper_slide swiper-slide swiper-slide-prev"
                style="width: 960px; margin-right: 40px;"
              >
                <div
                  class="c-header-page_media_lottie"
                  data-lottieheader-file="equilibre"
                  data-module-lottieheader="m9"
                ></div>
              </div>

              <div
                class="c-header-page_carousel_wrapper_slide swiper-slide swiper-slide-active"
                style="width: 960px; margin-right: 40px;"
              >
                <div
                  class="c-header-page_media_lottie"
                  data-lottieheader-file="rebond"
                  data-module-lottieheader="m10"
                ></div>
              </div>
            </div>

            <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
              <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span
              ><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span
              ><span
                class="swiper-pagination-bullet swiper-pagination-bullet-active"
                tabindex="0"
                role="button"
                aria-label="Go to slide 3"
              ></span>
            </div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
          </div>
        </div>
      </div>
    </div>

    <div class="herrrrro" :class="{ 'is-loaded': isLoaded }">
      <header class="c-site-header">
        <a href="" class="c-site-header_logo  ">
          <svg viewBox="0 0 340 279">
            <path
              d="M170,107c-32.53,0-59,26.47-59,59c0,32.53,26.47,59,59,59s59-26.47,59-59C229,133.47,202.53,107,170,107z M170,214 c-26.47,0-48-21.53-48-48c0-26.47,21.53-48,48-48s48,21.53,48,48C218,192.47,196.47,214,170,214z"
            />
            <path d="M292,80h-13c-3.42,0-6,2.58-6,6s2.58,6,6,6h13c3.42,0,6-2.58,6-6S295.42,80,292,80z" />
            <path
              d="M321,54h-73.62L226.1,10.44C222.43,4.02,215.87,0,209,0h-77c-7.79,0-14.33,3.98-17.08,10.39L93.62,54H78v-8 c0-10.48-8.52-19-19-19H46c-10.48,0-19,8.52-19,19v8h-8C8.52,54,0,62.52,0,73v187c0,10.48,8.52,19,19,19h302c10.48,0,19-8.52,19-19 V73C340,62.52,331.48,54,321,54z M125.11,15.55c1.43-2.85,4-4.55,6.89-4.55h77c2.37,0,5.72,2.21,6.89,4.55L234.6,54H105.36 L125.11,15.55z M38,46c0-4.56,3.44-8,8-8h13c4.56,0,8,3.44,8,8v8H38V46z M329,260c0,3.38-3.21,7-8,7H19c-4.79,0-8-3.62-8-7V73 c0-4.56,3.44-8,8-8h302c4.56,0,8,3.44,8,8V260z"
            />
            <path
              d="M170,80c-22.84,0-44.42,9.08-60.79,25.58C92.95,121.97,84,143.42,84,166c0,47.42,38.58,86,86,86s86-38.58,86-86 c0-22.58-8.95-44.03-25.21-60.42C214.42,89.08,192.84,80,170,80z M222.7,219.08C208.44,233.22,189.72,241,170,241 c-40.8,0-74-33.64-74-75c0-19.99,7.74-38.66,21.8-52.59C131.74,99.6,150.28,92,170,92c41.35,0,75,33.2,75,74 C245,185.99,237.08,204.84,222.7,219.08z"
            />
          </svg>
        </a>
        <div class="c-site-header_main">
          <a href="" class="c-site-header_main_link -left u-color-white">Support our mission</a>
          <a href="" class="c-site-header_main_link -right u-color-primary">Become a donor</a>
        </div>
        <a href="" class="c-site-header_langswitcher o-langswitcher u-color-primary">fr</a>
      </header>

      <div class="o-section || o-page_top c-header-page -small-padding-mobile -no-pointer-events">
        <div class="o-container">
          <div class="c-header-page_main">
            <div class="o-layout -gutter u-margin-bottom">
              <div class="o-layout_item">
                <h1 class="o-h1 o-title" data-scroll :class="{ 'is-show': isShow }">
                  <span class="o-title_row">
                    <span class="o-title_row_inner">
                      FAIR FIGHT
                    </span>
                  </span>

                  <span class="o-title_row">
                    <span class="o-title_row">
                      <span class="o-title_row_inner">
                        FOR ALL
                      </span>
                    </span>
                  </span>
                </h1>
              </div>
            </div>

            <div class="o-layout -gutter -flex@from-medium">
              <div class="o-layout_item u-3/4 u-1/2@from-small u-1/4@from-medium">
                <a class="c-header-page_main_image-wrap" href="#">
                  <figure class="o-image -parallax">
                    <div data-scroll data-scroll-position="top" data-scroll-speed="-1" :class="{ 'is-show': isShow }">
                      <div
                        class="o-image_media || c-header-page_main_image"
                        data-load-style="background-image: url('https://swabtheworld.com/assets/images/layout/home-main-1.png')"
                      ></div>
                    </div>
                  </figure>
                </a>
              </div>

              <div class="o-layout_item u-3/4@from-medium || u-relative">
                <span class="c-header-page_main_caption -right || u-color-white">
                  <span class="c-header-page_main_caption_inner">Give a blood cancer patient the kiss of life</span>
                </span>

                <div class="c-header-page_carousel-overlay">
                  <div class="c-header-page_carousel-overlay_item">
                    <div class="c-carousel-header-count" data-module-carouselheadercount>
                      <span>0</span>
                      <div
                        class="c-carousel-header-count_slider || swiper-carousel"
                        data-carouselheadercount="carousel"
                      >
                        <div
                          class="c-carousel-header-count_slider_wrapper || swiper-wrapper"
                          data-carouselheadercount="wrapper"
                        ></div>
                      </div>
                      <span> — 0</span>
                      <span data-carouselheadercount="total"></span>
                    </div>

                    <div class="c-header-page_carousel-text-wrap">
                      <div class="c-header-page_carousel-text || swiper-container" data-module-carouselheadertext>
                        <div class="c-header-page_carousel-text_wrapper || swiper-wrapper">
                          <div class="c-header-page_carousel-text_slide || swiper-slide">
                            <p>WE&#039;RE ALL CREATED EQUAL</p>
                          </div>
                          <div class="c-header-page_carousel-text_slide || swiper-slide">
                            <p>UNTIL BLOOD CANCER STRIKES</p>
                          </div>
                          <div class="c-header-page_carousel-text_slide || swiper-slide">
                            <p>LET&#039;S END THIS FATAL IMBALANCE</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="c-header-page_carousel-overlay_item">
                    <div class="c-carousel-header-count" data-module-carouselheadercount>
                      <span>0</span>
                      <div
                        class="c-carousel-header-count_slider || swiper-carousel"
                        data-carouselheadercount="carousel"
                      >
                        <div
                          class="c-carousel-header-count_slider_wrapper || swiper-wrapper"
                          data-carouselheadercount="wrapper"
                        ></div>
                      </div>
                      <span> — 0</span>
                      <span data-carouselheadercount="total"></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div
        class="c-header-page_media"
        data-scroll
        data-scroll-sticky
        data-scroll-target="#sticky"
        :class="{ 'is-show': isShow }"
      >
        <!-- SLIDER HERE -->
        <!-- IS CURRENTLY POSITIONED IN ABSOLUTE -->
        <div class="c-background-progress" data-module-backgroundprogress></div>

        <div
          class="c-header-page_media_inner"
          data-module-carouselheader
          data-scroll
          data-scroll-call="toggle, lottieheader"
          data-scroll-repeat
        >
          <div class="c-header-page_carousel swiper-carousel" data-carouselheader="carousel">
            <div class="c-header-page_carousel_wrapper swiper-wrapper">
              <div class="c-header-page_carousel_wrapper_slide swiper-slide" data-carouselheader="slide">
                <div class="c-header-page_media_lottie" data-lottieheader-file="vague" data-module-lottieheader></div>
              </div>

              <div class="c-header-page_carousel_wrapper_slide swiper-slide" data-carouselheader="slide">
                <div
                  class="c-header-page_media_lottie"
                  data-lottieheader-file="equilibre"
                  data-module-lottieheader
                ></div>
              </div>

              <div class="c-header-page_carousel_wrapper_slide swiper-slide" data-carouselheader="slide">
                <div class="c-header-page_media_lottie" data-lottieheader-file="rebond" data-module-lottieheader></div>
              </div>
            </div>

            <div class="swiper-pagination"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isShow: false,
      isLoaded: false,
    };
  },
  created() {
    this.isShow = true;
  },
  mounted() {
    setTimeout(this.templateLoaded, 0); // doesn't work any other way :(
  },
  methods: {
    templateLoaded() {
      this.isLoaded = true;
    },
  },
};
</script>

<style lang="scss">
.herrrrro {
  * {
    border: 2px dotted #000;
  }
}

.c-site-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 10;
  @media (max-width: 1000px) {
    padding: 1.25rem;
    height: 6.25rem;
  }
  @media (min-width: 1000px) {
    padding: 2.5rem;
    height: 7.25rem;
  }
}

.c-site-header_logo {
  width: 5.875rem;
  height: 2.25rem;
  display: block;
  opacity: 0;
  transform: translate3d(0, 50px, 0);
  transition: transform 0.6s cubic-bezier(0.4, 0, 0, 1), opacity 0.6s cubic-bezier(0.4, 0, 0, 1);
}

.is-loaded .c-site-header_logo {
  opacity: 1;
  transform: none;
}

.c-site-header_logo svg {
  display: block;
  width: 100%;
  height: 100%;
}

.c-site-header_main {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 3.75rem;
  height: 3.75rem;
  margin-top: -1.875rem;
  margin-left: -1.875rem;
  opacity: 0;
  transform: translate3d(0, 50px, 0);
  transition: transform 0.6s cubic-bezier(0.4, 0, 0, 1), opacity 0.6s cubic-bezier(0.4, 0, 0, 1);
}

.is-loaded .c-site-header_main {
  opacity: 1;
  transform: none;
  transition-delay: 0.2s;
}

@media (max-width: 1000px) {
  .c-site-header_main {
    display: none;
  }
}

.c-site-header_main_link {
  position: absolute;
  display: block;
  top: 50%;
  transform: translate3d(0, -50%, 0);
  white-space: nowrap;
}

.c-site-header_main_link:hover {
  text-decoration: underline;
}

.c-site-header_main_link.-left {
  right: calc(100% + 3.75rem);
}

.c-site-header_main_link.-right {
  left: calc(100% + 3.75rem);
}

.c-site-header_langswitcher {
  text-transform: uppercase;
  opacity: 0;
  transform: translate3d(0, 50px, 0);
  transition: transform 0.6s cubic-bezier(0.4, 0, 0, 1), opacity 0.6s cubic-bezier(0.4, 0, 0, 1);
}

@media (min-width: 700px) {
  .c-site-header_langswitcher {
    font-size: 0.6875rem;
  }
}

@media (max-width: 699px) {
  .c-site-header_langswitcher {
    font-size: 11px;
  }
}

.is-loaded .c-site-header_langswitcher {
  opacity: 1;
  transform: none;
  transition-delay: 0.4s;
}

@media (max-width: 1000px) {
  .c-site-header_langswitcher {
    display: none;
  }
}

.c-site-header_button {
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  width: 3.75rem;
  height: 3.75rem;
  z-index: 200;
}

@media (min-width: 1800px) {
  .c-site-header_button {
    transform: translate3d(0, -200px, 0);
  }
}

@media (min-width: 1000px) and (max-width: 1799px) {
  .c-site-header_button {
    transform: translate3d(0, -100px, 0);
  }
}

@media (min-width: 1000px) {
  .c-site-header_button {
    top: 3.625rem;
    left: 50%;

    transition: transform 0.3s cubic-bezier(0.4, 0, 0, 1);
    margin-top: -1.875rem;
    margin-left: -1.875rem;
  }
  .is-top .c-site-header_button,
  [data-way='up'] .c-site-header_button {
    transform: translateZ(0);
  }
  .has-menu-open .c-site-header_button,
  .is-mobile .c-site-header_button {
    transform: translateZ(0) !important;
  }
}

@media (max-width: 1000px) {
  .c-site-header_button {
    right: 1.25rem;
    top: 1.25rem;
  }
}

.c-site-header_button:before {
  content: '';
  z-index: -1;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  border-radius: 50%;
  background-color: #fff;
  transition: transform 0.3s cubic-bezier(0.17, 0.67, 0.3, 1.33);
  transform: scale(0);
}

.is-loaded .c-site-header_button:before {
  transform: scale(1);
}

.is-loaded .c-site-header_button:hover:before {
  transform: scale(1.2);
}

.c-site-header_button_icon {
  position: absolute;
  top: 50%;
  left: 50%;
}

.c-site-header_button_icon.-open {
  width: 1.4375rem;
  height: 8px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  transform: translate3d(-50%, -50%, 0) rotate(0deg);
  opacity: 1;
  transition: transform 0.45s cubic-bezier(0.4, 0, 0, 1), opacity 0.45s cubic-bezier(0.4, 0, 0, 1);
}

.c-site-header_button_icon.-open:after,
.c-site-header_button_icon.-open:before {
  height: 1px;
  width: 100%;
}

.has-menu-open .c-site-header_button_icon.-open {
  opacity: 0;
  transform: translate3d(-50%, -50%, 0) rotate(180deg);
}

.c-site-header_button_icon.-close {
  width: 26px;
  height: 26px;
  transform: translate3d(-50%, -50%, 0) rotate(-180deg);
  opacity: 0;
  transition: transform 0.45s cubic-bezier(0.4, 0, 0, 1), opacity 0.45s cubic-bezier(0.4, 0, 0, 1);
}

.c-site-header_button_icon.-close:before {
  position: absolute;
  top: 12px;
  left: 0;
  height: 1px;
  width: 100%;
}

.c-site-header_button_icon.-close:after {
  position: absolute;
  top: 0;
  left: 13px;
  height: 100%;
  width: 1px;
}

.has-menu-open .c-site-header_button_icon.-close {
  opacity: 1;
  transform: translate3d(-50%, -50%, 0) rotate(-45deg);
}

.c-site-header_button_icon:after,
.c-site-header_button_icon:before {
  content: '';
  opacity: 0;
  transition: opacity 0.6s cubic-bezier(0.4, 0, 0, 1);
}

.is-loaded .c-site-header_button_icon:after,
.is-loaded .c-site-header_button_icon:before {
  opacity: 1;
  transition-delay: 0.4s;
  background-color: #5e62d1;
}

.o-page,
.o-page_top {
  position: relative;
}

.o-page_top {
  z-index: 1;
}

@media (min-width: 1000px) {
  .o-page_top {
    padding-top: 12.25rem;
  }
  .o-page_top.-half-white:before {
    content: '';
    position: absolute;
    right: 0;
    top: 0;
    z-index: -1;
    background-color: #fff;
    width: 75%;
    height: 100%;
  }
}

@media (max-width: 999px) {
  .o-page_top {
    padding-top: 8.5rem;
  }
}

.o-image {
  position: relative;
}

.o-image,
.o-image.-parallax {
  overflow: hidden;
}

.o-image_media {
  width: 100%;
}

.o-image.-parallax .o-image_media {
  margin-top: -10%;
  margin-bottom: -10%;
}

.o-image_background {
  padding-bottom: 100%;
  background-size: cover;
  background-position: 50%;
  width: 100%;
}

@media (max-width: 499px) {
  .c-splash .o-image_media {
    width: 150%;
    max-width: inherit;
    margin-left: -25%;
  }
}
</style>
