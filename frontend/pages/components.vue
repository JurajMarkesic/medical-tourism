<template>
  <div>
    <section class="headings" style="min-height: 100vh;">
      <div class="o-container">
        <p>Headings</p>
        <h1 class="o-h1">H1 / Content Title</h1>
        <h2 class="o-h2">H2 / Content Title</h2>
        <h3 class="o-h3">H3 / Content Title</h3>
        <h4 class="o-h4">H4 / Content Title</h4>
        <h5 class="o-h5">H5 / Content Title</h5>
        <h6 class="o-h6">H6 / Content Title</h6>
      </div>
    </section>

    <section class="buttons" style="min-height: 100vh;">
      <div class="o-container">
        <p>Buttons</p>
        <!-- [begin] BUTTON DEFAULT -->
        <button>button</button>
        <!-- [end] -->

        <!-- [begin] BUTTON BASE -->
        <button class="o-button">button</button>
        <!-- [end] -->

        <!-- [begin] BUTTON ICON -->
        <button class="o-button">
          <span class="o-button_label">Button label</span>
          <span class="o-button_icon">
            <svg viewBox="0 0 20 16.8">
              <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
            </svg>
          </span>
        </button>
        <!-- [end] -->

        <!-- [begin] BUTTON ICON - https://swabtheworld.com/fr/nous-joindre -->
        <button class="o-form_button || o-button" data-form="button" type="submit">
          <span class="o-button_label">Envoyer</span>
          <span class="o-button_icon">
            <svg viewBox="0 0 20 16.8">
              <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
            </svg>
          </span>
        </button>
        <!-- [end] -->

        <p>Buttons (spcial)</p>
        <div data-colorset="lavender-aloes">
          <!-- [begin] BUTTON DEFAULT -->
          <a aria-label="Become a donor" class="o-button-rail" href="">
            <span class="o-button-rail_label">Become a donor</span>
            <span class="o-button-rail_label">Become a donor</span>
            <span class="o-button-rail_label">Become a donor</span>
          </a>
          <!-- [end] -->
        </div>

        <div data-colorset="lavender-aloes">
          <div data-colorset="generic">
            <!-- [begin] BUTTON GENERIC -->
            <a aria-label="Become a donor" class="o-button-rail" href="">
              <span class="o-button-rail_label">Become a donor</span>
              <span class="o-button-rail_label">Become a donor</span>
              <span class="o-button-rail_label">Become a donor</span>
            </a>
            <!-- [end] -->
          </div>
        </div>

        <div data-colorset="lavender-aloes">
          <div data-colorset-inverted>
            <!-- [begin] BUTTON INVERTED -->
            <a aria-label="Become a donor" class="o-button-rail" href="">
              <span class="o-button-rail_label">Become a donor</span>
              <span class="o-button-rail_label">Become a donor</span>
              <span class="o-button-rail_label">Become a donor</span>
            </a>
            <!-- [end] -->
          </div>
        </div>
      </div>
    </section>

    <section class="inputs" style="min-height: 100vh;">
      <div class="o-container">
        <p>Inputs</p>
        <!-- [begin] TEXT INPUT -->
        <label class="o-label" for="fullname">Full name (label)</label>
        <input id="fullname" class="o-input" type="text" />
        <!-- [end] -->

        <!-- [begin] CHECKBOX INPUT -->
        <input id="id-checkbox" checked class="o-checkbox" type="checkbox" />
        <label class="o-checkbox-label" for="id-checkbox">
          <span class="o-checkbox-label_text">Checkbox label text</span>
        </label>
        <!-- [end] -->

        <!-- [begin] RADIO INPUT -->
        <input id="id-radio" checked class="o-radio" type="radio" />
        <label class="o-radio-label" for="id-radio">
          <span class="o-checkbox-label_text">Radio label text</span>
        </label>
        <!-- [end] -->

        <!-- [begin] RADIO INPUT -->
        <div class="radio-toggle">
          <input id="id-vanilla" class="o-radio" type="radio" name="choose-ice-cream" />
          <label class="o-radio-label" for="id-vanilla">
            <span class="o-radio-label_text">vanilla</span>
          </label>

          <input id="id-chocolate" class="o-radio" type="radio" name="choose-ice-cream" />
          <label class="o-radio-label" for="id-chocolate">
            <span class="o-radio-label_text">chocolate</span>
          </label>
        </div>
        <!-- [end] -->

        <!-- [begin] E-MAIL INPUT -->
        <label class="o-label" for="id-email">E-mail (label)</label>
        <input id="id-email" class="o-input" type="email" />
        <!-- [end] -->

        <!-- [begin] USERNAME INPUT -->
        <label class="o-label" for="id-username">Username (label)</label>
        <input id="id-username" class="o-input" type="text" />
        <!-- [end] -->

        <!-- [begin] PASSWORD INPUT -->
        <label class="o-label" for="id-password">Password (label)</label>
        <input id="id-password" class="o-input" type="password" />
        <!-- [end] -->

        <!-- [begin] SEARCH INPUT -->
        <label class="o-label" for="id-search">Search (label)</label>
        <input id="id-search" class="o-input" type="search" placeholder="Search..." />
        <!-- [end] -->

        <!-- [begin] not used -->
        <input hidden class="" type="color" />
        <input hidden class="" type="date" />
        <input hidden class="" type="datetime-local" />
        <input hidden class="" type="file" />
        <input hidden class="" type="month" />
        <input hidden class="" type="number" />
        <input hidden class="" type="range" />
        <input hidden class="" type="tel" />
        <input hidden class="" type="time" />
        <input hidden class="" type="url" />
        <input hidden class="" type="week" />
        <!-- [end] -->
      </div>
    </section>

    <section class="cards" style="min-height: 100vh;">
      <div class="o-container">
        <!-- [begin] not used -->
        <article class="o-layout_item || u-1/2@from-small">
          <a class="c-preview" href="">
            <figure class="c-preview_image-wrap || o-image">
              <div
                class="c-preview_image"
                style="background-image: url('//placedog.net/400/200'); background-position: 50% 50%;"
              ></div>
            </figure>

            <div class="c-preview_body">
              <h1 class="c-preview_title || o-label">Poliklinika Bagatin</h1>
              <div class="c-preview_location">
                <span>Zagreb, Croatia</span>
              </div>
              <div class="c-preview_accreditations">
                <span>icon</span> <span>icon</span> <span>icon</span> <span>icon</span> <span>icon</span>
              </div>
              <div class="c-preview_review">
                <div class="c-preview_procedure_name">
                  <span>icon maybe</span>
                  <span>FUE Hair Transplant Review</span>
                </div>
                <div class="c-preview_procedure_comment">
                  <span>I thought the entire experience was exceptional. Highly recommended.</span>
                </div>
                <div class="c-preview_author">
                  <span>Paul C., Canada, October 2019</span>
                </div>
              </div>
              <div class="c-preview_price">
                <span class="c-preview_price_title">PRICE UPON REQUEST</span>
                <span class="c-preview_price_label">Price</span>
                <span class="c-preview_price_amount">€ 5,850</span>
              </div>
              <div class="c-preview_buttons">
                <span class="o-icon">
                  <svg viewBox="0 0 20 16.8">
                    <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                  </svg>
                </span>
              </div>
            </div>
          </a>
        </article>
        <!-- [end] -->

        <!-- [begin] not used -->
        <article class="c-card">
          <div class="c-card_media">
            <figure class="o-image">
              <img src="//placedog.net/400/300" />
            </figure>
          </div>
          <div class="c-card_body">
            <h1 class="o-title">Card title</h1>
            <div class="c-card_subtitle">Secondary text</div>
            <div class="c-card_text">
              Greyhound divisively hello coldly wonderfully marginally far upon excluding.
            </div>
          </div>
        </article>
        <!-- [end] -->

        <!-- [begin] not used -->
        <article class="clinic-card">
          <div class="clinic-card__media">
            <figure class="o-image">
              <img alt="" class="o-image_media" :class="{ 'is-show': isShow }" src="//placedog.net/600/400" />
            </figure>
          </div>
          <div class="clinic-card__body">
            <div class="clinic-card__title">
              <h3>Liv Hospital Ulus Istanbul</h3>
            </div>
            <div class="clinic-card__details"><span>Istanbul, Turkey</span></div>
            <div class="clinic-card__reviews">
              <span class="clinic-card__reviews__subtitle ">FUE Hair Transplant Review</span>
              <span class="reviews-teaser reviews-teaser--no-extension"
                >I thought the entire experience was exceptional, I would hihly recommend it. i JUMPED AROUND A BIT
                BETWEEN DIFFERENT AGENTS, THIS WAS A LITTLE CONFUSING</span
              >
              <div class="reviews-author">
                <span class="font-semibold">Paul C.</span> <span>Canada</span> <span>October 2019</span>
              </div>
            </div>
            <div class="clinic-card__from"><span>Gastric Sleeve from</span></div>
            <div class="clinic-card__price">
              <span class="uppercase">PRICE UPON REQUEST</span>
            </div>
            <div class="clinic-card__price">
              <span class="uppercase">Price</span> <span class="clinic-card__price__value">€ 5,850</span>
            </div>
            <a class="clinic-card__button">Details</a>
          </div>
        </article>
        <!-- [end] -->
      </div>
    </section>

    <section class="cards" style="min-height: 100vh;" hidden>
      <div class="o-container">
        <!-- [begin] not used -->
        <article class="c-card">
          <div class="c-card__media">
            <img src="//placedog.net/400/300" />
          </div>
          <div class="c-card__body">
            <div class="c-card__title">
              <h1 class="o-title">Card title</h1>
            </div>
            <div class="c-card__subtitle">Secondary text</div>
            <div class="c-card__text">
              Greyhound divisively hello coldly wonderfully marginally far upon excluding.
            </div>
          </div>
        </article>
        <!-- [end] -->

        <!-- [begin] not used -->
        <article class="clinic-card">
          <img
            data-src="https://res.cloudinary.com/junomedical/image/upload/f_auto,w_350,c_scale,fl_progressive/clinic/liv_team_edited2"
            alt="Liv Hospital Ulus Istanbul"
            class="js-lazy"
            src="https://res.cloudinary.com/junomedical/image/upload/f_auto,w_350,c_scale,fl_progressive/clinic/liv_team_edited2"
            data-loaded="true"
          />
          <div class="clinic-card__title">
            <h3>Liv Hospital Ulus Istanbul</h3>
          </div>
          <div class="clinic-card__details"><span>Istanbul, Turkey</span></div>
          <div class="clinic-card__reviews">
            <span class="clinic-card__reviews__subtitle ">FUE Hair Transplant Review</span>
            <span class="reviews-teaser reviews-teaser--no-extension"
              >I thought the entire experience was exceptional, I would hihly recommend it. i JUMPED AROUND A BIT
              BETWEEN DIFFERENT AGENTS, THIS WAS A LITTLE CONFUSING</span
            >
            <div class="reviews-author">
              <span class="font-semibold">Paul C.</span> <span>Canada</span> <span>October 2019</span>
            </div>
          </div>
          <div class="clinic-card__from"><span>Gastric Sleeve from</span></div>
          <div class="clinic-card__price">
            <span class="uppercase">PRICE UPON REQUEST</span>
          </div>
          <div class="clinic-card__price">
            <span class="uppercase">Price</span> <span class="clinic-card__price__value">€ 5,850</span>
          </div>
          <a class="clinic-card__button">Details</a>
        </article>
        <!-- [end] -->
      </div>
    </section>

    <section class="rails" style="min-height: 100vh; overflow: hidden;">
      <div class="o-container">
        <!-- [begin] -->
        <div class="o-container -medium">
          <div class="c-rail-static -slow || u-margin-bottom-3" :class="{ 'is-show': isShow }">
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
            <div class="c-rail-static_item">
              <span class="c-rail-static_label">This is the rail label</span>
            </div>
          </div>
        </div>
        <!-- [end] -->
      </div>
    </section>

    <section class="anchor-navs" style="min-height: 100vh; position: relative; overflow: hidden;">
      <div class="o-container">
        <!-- [begin] -->
        <div class="c-anchor-nav-wrap" :class="{ 'is-show': isShow }">
          <nav class="c-anchor-nav">
            <div class="c-anchor-nav_list">
              <div class="c-anchor-nav_list_inner">
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-one">Anchor one</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-two">Anchor two</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-three">Anchor three</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-four">Anchor four</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
              </div>
              <div class="c-anchor-nav_list_inner">
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-one">Anchor one</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-two">Anchor two</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-three">Anchor three</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-four">Anchor four</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
              </div>
              <div class="c-anchor-nav_list_inner">
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-one">Anchor one</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-two">Anchor two</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-three">Anchor three</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
                <div class="c-anchor-nav_list_item u-color-primary">
                  <a class="u-color-primary" href="#anchor-four">Anchor four</a>
                  <span class="c-anchor-nav_list_item_arrow">/</span>
                </div>
              </div>
            </div>
          </nav>
        </div>
        <!-- [end] -->
      </div>
    </section>

    <section class="what-we-do-intro" style="min-height: 100vh;" :class="{ 'is-loaded': isLoaded }">
      <div class="o-container">
        <!-- [begin] -->
        <section id="anchor-one" class="o-section -padding-top">
          <div class="o-container">
            <div class="o-layout -gutter">
              <div class="o-layout_item u-1/4@from-medium || u-relative || u-margin-bottom">
                <span class="o-h3 o-title -last-horizontal" :class="{ 'is-show': isShow }">
                  <span class="o-title_row">
                    <span class="o-title_row_inner">This is us</span>
                  </span>
                </span>
              </div>

              <div class="o-section_main || o-layout_item u-3/4@from-medium">
                <!-- block text with label -->
                <div class="o-layout -gutter">
                  <div class="o-layout_item u-1/3@from-small u-margin-bottom">
                    <p class="o-label -max || u-color-white">We’re as caring as we are driven</p>
                  </div>

                  <div class="o-layout_item u-2/3@from-small || o-wysiwyg || u-color-white">
                    <h2>We move mountains</h2>
                    <p>We aim to boost ethnic diversity in the worldwide stem cell donor base.</p>
                  </div>
                </div>

                <!-- block video with label -->
                <div class="o-layout -gutter -bottom -reverse || u-margin-bottom-2 u-margin-top-2">
                  <div class="o-layout_item u-2/3@from-small || o-wysiwyg || u-color-white">
                    <div
                      class="o-video -standard || o-button-hover"
                      data-iframe='<iframe width="560" height="315" src="https://www.youtube.com/embed/https://youtu.be/4AyhEkrd7ck" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
                    >
                      <button class="o-video_button || o-button-round" type="button" aria-label="Play">
                        <span class="o-button-round_icon">
                          <svg viewBox="0 0 18 20">
                            <polyline points="0,20 0,0 18,10 0,20 "></polyline>
                          </svg>
                        </span>
                      </button>

                      <video
                        class="o-video_media"
                        playsinline=""
                        muted=""
                        loop=""
                        autoplay=""
                        src="https://player.vimeo.com/external/371818761.sd.mp4?s=4fe15a249d6cba73105c8f2d8a2a8c8ae0a22b4d&profile_id=139&oauth2_token_id=57447761"
                      ></video>
                      <!-- <video src="https://swabtheworld.com/upload/video/Equality-Swab-the-World-Social.mp4"></video> -->
                    </div>
                  </div>

                  <div class="o-layout_item u-1/3@from-small u-margin-top">
                    <p class="o-label-small -max u-margin-bottom">OUR MISSION</p>
                    <span class="o-label -max u-color-white u-margin-bottom-none"
                      >MAKE SURE EVERY SINGLE PATIENT FINDS THEIR MATCH. PERIOD.</span
                    >
                  </div>
                </div>

                <!-- block text -->
                <div class="o-layout -gutter -reverse">
                  <div class="o-layout_item u-2/3@from-small || u-color-white">
                    <div class="o-wysiwyg u-margin-bottom-2">
                      <p>
                        Swab The World was born out of the desire to empower patients from all over the world through
                        agility, technology and media. <br />
                        <br />
                        More than a simple recruitment platform to register donors, Swab The World aims to empower
                        patients from all over by giving them the right tools and the right words to lead a successful
                        recruitment campaign, be it locally or internationally.<br />
                        <br />
                        Through our platform, those looking for a match can get the word out on stem cells, connect
                        qualified donors to their country’s registry, and connect with others going through the same
                        ordeal. Real people, real impact, real change.
                      </p>
                    </div>

                    <a aria-label="BECOME A DONOR" class="o-button-rail" href="" :class="{ 'is-show': isShow }">
                      <span class="o-button-rail_label">BECOME A DONOR</span>
                      <span class="o-button-rail_label">BECOME A DONOR</span>
                      <span class="o-button-rail_label">BECOME A DONOR</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- [end] -->
      </div>
    </section>

    <!-- [begin] shred -->
    <div class="o-shred">
      <svg viewBox="0 0 1920 187.1">
        <path
          d="M1920,65.1c0,40.7,0,81.3,0,122c-640,0-1280,0-1920,0c0-37.3,0-74.7,0-112c8-1.8,15.8-1,23.7,0.5c3.7,0.7,7.5,1.1,11.4,0 c4.1-1.2,8.4-1.8,12.6-2.7c1.1-0.2,2.4-0.2,3.3-0.8c5.2-3.5,11.3-3.9,17.1-5c3-0.6,5.8-1.3,8.5-2.6c6.1-3.1,12.5-4.4,19.2-4.6 c3.1-0.1,6.3-0.7,9.1-2c2.6-1.2,5.2-2,8.1-2.3c1.3-0.1,2.7-0.3,3.9-0.7c4.2-1.7,8.7-2,13.2-2.6c3.5-0.5,7-0.9,10.3-1.8 c5.6-1.6,11.1-3.4,16.5-5.4c3.3-1.2,7.4-0.9,9.5-4.6c0.3-0.4,1.2-0.5,1.8-0.7c5.5-1.9,10.9-3.9,16.4-5.7c1.7-0.6,3.6-0.7,5.4-0.8 c4.3-0.1,8.7-0.2,13-0.1c5.5,0.2,10.8,0.4,16.2,2.2c4.1,1.4,8.7,2.1,13.3,0.9c4.5-1.1,9.3,0.2,13.7-1.8c0.3-0.1,0.6,0.1,1,0.1 c5,0.6,9.8-0.3,14.7-1.8c4.3-1.3,8.7-2.1,13.3-0.9c1.4,0.4,3,0.5,4.5,0.4c4.1-0.3,8.2-1,12.4-1.2c6.8-0.3,13.5-1.1,20.1-2.8 c1.4-0.4,3-0.4,4.5-0.1c4.1,0.7,8,0.2,11.8-1c6.4-2,12.9-2.9,19.7-2.4c1.3,0.1,2.8,0.2,3.9-0.3c5.2-2.7,10.8-2.8,16.4-3.6 c3.4-0.5,6.5,0.3,9.8,1c11.4,2.4,22.5,1.8,32.1-5.9c1.2-0.9,2.4-1.8,3.7-2.6c0.7-0.5,1.4-1.1,2.2-1.1c4,0,8-1.1,11.9,0.5 c3,1.3,6.1,1.2,9.3,0.3c1.1-0.3,2.2-0.3,3.3-0.2c6,0.6,12.1,0.6,17.7-1.7c3.5-1.4,6.9-1.9,10.5-2.5c3.9-0.7,8.1-1.5,11.3-3.6 c5.1-3.4,10.5-3.5,16.1-3.3c5.8,0.3,11.6,1,17.4,1c5.3,0,10.6-0.7,15.9-1.1c3.3-0.2,6.6-0.5,10-0.7c7.5-0.4,14.9-0.7,22.4-1 c0.9,0,2.5,0.2,2.7,0.7c1.2,3.1,3.7,2.3,5.9,2.2c2.7-0.1,5.3-0.4,7.9-0.9c7.1-1.4,13.8-0.2,20.5,1.9c2.2,0.7,4.5,1.1,6.8,1.1 c6.7,0,13.3-0.3,20-0.3c4.6,0,9.3,0.4,13.9,0.4c3.8-0.1,7.6-0.8,11.4-0.8c4.9-0.1,9.9-1.6,14.7,0.9c3.5,1.8,7.2,1.8,11.2,0.9 c6.9-1.6,13.8-2.2,20.3,1.5c0.6,0.3,1.3,0.4,1.9,0.5c4.5,0.3,8.9,0.6,13.4,0.9c1,0.1,2.1,0.2,3-0.2c6.7-2.4,12.9-0.7,18.7,2.5 c5,2.8,9.9,2.8,14.7,0.2c3.4-1.9,6.6-1.9,10.1-1c1.9,0.5,3.9,0.8,5.9,1.1c3.5,0.4,6.9,0.8,9.9,3c1.4,1,3,1.2,4.7,0.8 c1.8-0.4,3.8-0.8,5.4-0.3c3.3,1,6.6,1,9.9,0.6c3.5-0.4,6.5,0.5,9.4,2.3c9.7,6.3,20.2,10.8,31.5,13.3c2.3,0.5,4.7,1.1,6.5,2.4 c1.6,1.1,3,1.3,4.6,1.2c7.3-0.1,14.7-0.2,22-0.2c2.5,0,5,0.4,7.4,0.9c9.7,2,19.4,3.1,29.1,0.1c0.8-0.2,1.9-0.6,2.4-0.3 c2,1.5,4.1,0.4,6.1,0.7c4,0.6,7.8,0.3,11.6-1.1c0.7-0.3,1.6,0.2,2.5,0.3c1.8,0.2,3.7,0.2,5.5,0.6c3.1,0.7,6.3,1,9,2.4 c3.7,1.9,7.4,2.6,11.5,2.5c2.6,0,5.3,0.5,7.9,0.8c2.1,0.3,4.2,0.7,6.4,1c2,0.3,3.9,0.7,5.9,0.8c7.7,0.7,15.3,4.9,23.3,1.2 c0.1-0.1,0.3,0,0.5,0c3.1-1.1,6.3,0.1,9.4,0.2c5.2,0.2,10.6-1,15.7,1.3c0.4,0.2,1,0.1,1.4,0.1c4-0.2,8-0.3,11.9-0.6 c4.6-0.4,9.2-0.7,13.1-3.9c1.1-0.9,2.7-1.1,4.2-1.3c3.8-0.6,7.6-1.1,11.4-1.5c2.6-0.3,5.1-0.4,7.8,0.9c2.7,1.3,6,2.2,8.5-1.1 c0.9-1.2,2.2-1.3,3.5-0.2c2.4,2.2,5.2,1.8,7.8,0.6c1.8-0.9,3.4-1.2,5.3-0.8c0.9,0.2,2.2,0.3,2.9-0.2c2.4-1.4,4.7-1,7.2-0.7 c1,0.1,2-0.1,3-0.3c3.8-0.6,7.5-1.7,11.3-1.8c7.1-0.1,13.7-2.4,20.2-4.7c8.6-2.9,16.9-5.8,26.2-5.1c1.3,0.1,2.6-0.4,3.9-0.6 c2.8-0.6,5.6-1.9,8.3-1.7c5.2,0.3,10.2,0.1,15.4-0.3c8.3-0.7,16.4,1.8,24.7,2.6c2.9,0.3,5.6,0.7,8.2-0.7c3.6-2,7.7-1.6,11.2-0.9 c3.1,0.6,6,0.9,9.2,1c6.8,0.1,13.1-1.3,19.4-3.6c1.8-0.7,4.1-0.9,5.9-0.4c4.2,1.4,8.4,1.5,12.7,2.1c6.7,1.1,13.2,0.8,19.7-1 c3.3-0.9,6.9-1.1,10.3-1.7c1.5-0.2,3.3-0.1,4.3-1c2-1.8,4.2-1.6,6.5-1.8c2.5-0.2,4.9-0.6,7.4-1c2.1-0.3,4.2-0.7,6.4-1.1 c8-1.4,16.1-2.6,24.3-2.1c0.6,0,1.3-0.4,1.9-0.4c3-0.2,6-0.4,8.9-0.5c2.7-0.1,5.6,0.6,7.9-0.3c3.6-1.4,7.1-1.3,10.8-0.8 c2.9,0.5,5.9,0.9,8.8,1.2c2.6,0.2,5.3,0.1,7.9,0.2c3.7,0.1,7.4-0.3,10.9,0.5c3.4,0.8,6.8,1.4,10.3,1.4c3.6,0,6.8,1.1,10,2.7 c7,3.5,14.2,5.4,22.1,3.2c1.2-0.3,2.6-0.1,3.9-0.1c5.3,0.4,10.6,1.1,15.9,1.2c6.7,0.1,13.3-0.1,20-0.4c1.4,0,2.8-0.7,4.3-1 c4.2-0.7,8.7-2.2,12.7-1.7c5.8,0.8,12,0.7,17.5,3.5c0.7,0.3,1.6,0.4,2.4,0.4c4.6,0,9.3-0.7,13.8,1c0.9,0.3,2,0,3-0.1 c1,0,2-0.2,2.9-0.1c6.6,0.7,13.2,1.4,19.8,2.2c1.2,0.1,2.3,0.2,3.4,0.5c5.4,1.6,10.8,3.3,16.1,5.1c9.4,3.1,18.6,7.3,28.8,7.2 c0.3,0,0.7,0.1,1,0.2c9,1.7,17.8,4.1,26.9,5.2c2.8,0.3,5.7,0.8,8.2,1.8c2.6,1.1,5.2,1.1,7.8,0.8c3.3-0.3,6.7-0.5,9.9-1.2 c2.9-0.6,5.2,0.2,7.4,1.8c5.4,3.9,11.6,5.6,18.2,5.7c5.8,0.1,11.7,0.2,17.5,0.8c2.6,0.2,5,1.5,7.5,2.4c1.5,0.5,3,1.5,4.6,1.7 c5.2,0.8,10.5,1.4,15.8,2.1c2.6,0.3,5.3,0.8,7.9,0.9c2.9,0.1,5.6,0.7,8.1,2.2c7.2,4.3,15.4,4.9,23.4,6c0.8,0.1,1.7,0,2.5-0.3 c7.6-2.8,15.2-5.7,22.8-8.4c2.6-1,5.4-1.7,8.1-2.4c1.3-0.4,2.7-0.4,3.9-0.9c2.3-1,4.5-0.8,6.8,0c3.4,1.2,6.9,2.6,10.4,3.1 c9,1.5,18.2,1.9,27.3,0.9c6-0.7,11.6,0,16.8,3.3c2.7,1.7,5.7,2.3,8.6,1.6C1907.4,64.6,1913.7,65,1920,65.1z"
        />
      </svg>
    </div>
    <!-- [end] -->

    <div class="o-container">
      <!-- [begin] image -->
      <figure class="o-image">
        <div
          class="o-image_background"
          style="background-image: url(//placedog.net/500/400); background-position: center center;"
        ></div>
      </figure>
      <!-- [end] -->
    </div>

    <!-- [begin] splash -->
    <section class="splashes" style="min-height: 100vh; position: relative;" :class="{ 'is-loaded': isLoaded }">
      <div class="o-container">
        <div class="c-splash_content || u-text-center">
          <p class="o-title o-h1">
            Give a blood<br />
            cancer patient the<br />
            kiss of life
          </p>
        </div>
        <figure class="o-image">
          <img alt="" class="o-image_media" :class="{ 'is-show': isShow }" src="//placedog.net/600/400" />
        </figure>
      </div>
    </section>
    <!-- [end] -->

    <div class="o-container">
      <!-- [begin] table -->
      <div class="o-table">
        <a class="o-table_row o-button-hover" href="">
          <div class="o-layout">
            <div class="o-layout_item u-1/3@from-small">
              <span class="o-label">01</span>
            </div>

            <div class="o-layout_item u-2/3@from-small || o-wysiwyg || u-color-white">
              <h2>Donate money</h2>
              <button class="o-button" type="button" aria-label="Give now">
                <span class="o-button_label">Give now</span>
                <span class="o-button_icon">
                  <svg viewBox="0 0 20 16.8">
                    <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                  </svg>
                </span>
              </button>
            </div>
          </div>

          <div class="o-table-cricle -step is-show">
            <div class="o-table-cricle_inner">
              <div class="o-table-cricle_inner_wrap">
                <img alt="" src="https://swabtheworld.com/assets/images/layout/step-0-4.jpg" />
              </div>
            </div>
          </div>
        </a>

        <a class="o-table_row o-button-hover" href="">
          <div class="o-layout">
            <div class="o-layout_item u-1/3@from-small">
              <span class="o-label">02</span>
            </div>

            <div class="o-layout_item u-2/3@from-small || o-wysiwyg || u-color-white">
              <h2>BECOME A STEM CELL DONOR</h2>
              <button class="o-button" type="button" aria-label="Sign up">
                <span class="o-button_label">Sign up</span>
                <span class="o-button_icon">
                  <svg viewBox="0 0 20 16.8">
                    <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                  </svg>
                </span>
              </button>
            </div>
          </div>

          <div class="o-table-cricle -step is-show">
            <div class="o-table-cricle_inner">
              <div class="o-table-cricle_inner_wrap">
                <img alt="" src="https://swabtheworld.com/assets/images/layout/step-0-2.jpg" />
              </div>
            </div>
          </div>
        </a>
      </div>
      <!-- [end] -->
    </div>

    <div class="o-container">
      <!-- [begin] table stats -->
      <div class="o-table-stats">
        <!-- Ethnicity !-->
        <div class="o-table-stats_row">
          <div class="o-table-stats_row_item">
            <span>Birthday</span>
          </div>

          <div class="o-table-stats_row_item">
            <span>May 12, 2006</span>
          </div>
        </div>

        <!-- Ethnicity !-->
        <div class="o-table-stats_row -ethnicity">
          <div class="o-table-stats_row_item -tooltip-right-mobile">
            <span>Ethnicity</span>
            <span class="o-tooltip-hover">
              Why does it matter ?
              <span
                class="o-tooltip -inverted"
                aria-label="One reason: DNA. The best donors tend to come from the same ethnic gene pool as the patient. It’s actually the only situation where race legitimately matters."
                rel="tooltip"
              >
                <i class="o-tooltip_icon">?</i>
              </span>
            </span>
          </div>

          <div class="o-table-stats_row_item">
            <span>Croatia (Hrvatska), France, Japan</span>
          </div>
        </div>

        <!-- Country !-->
        <div class="o-table-stats_row">
          <div class="o-table-stats_row_item">
            <span>Country</span>
          </div>

          <div class="o-table-stats_row_item">
            <span>France</span>
          </div>
        </div>

        <!-- Status !-->
        <div class="o-table-stats_row">
          <div class="o-table-stats_row_item">
            <span>Status</span>
          </div>

          <div class="o-table-stats_row_item">
            <span>Looking</span>
          </div>
        </div>

        <!-- Diagnosis Date !-->
        <div class="o-table-stats_row">
          <div class="o-table-stats_row_item">
            <span>Diagnosis date</span>
          </div>

          <div class="o-table-stats_row_item">
            <span>Jun 12, 2018</span>
          </div>
        </div>

        <!-- Greffe Date !-->

        <!-- Websites !-->
        <div class="o-table-stats_row">
          <div class="o-table-stats_row_item">
            <span>Websites</span>
          </div>
          <div class="o-table-stats_row_item">
            <span
              ><a href="https://www.facebook.com/leosuperheros.swab4leo" target="_blank" rel="noreferrer"
                >http://www.facebook.com/leosuperheros.swab4leo</a
              ></span
            >
            <span><a href="https://www.facebook.com/leosuperheros.swab4leo" target="_blank" rel="noreferrer"></a></span>
          </div>
        </div>

        <!-- Disease !-->
        <div class="o-table-stats_row">
          <div class="o-table-stats_row_item">
            <span>Illness</span>
          </div>

          <div class="o-table-stats_row_item">
            <span>Acute Lymphoblastic Leukemia T</span>
          </div>
        </div>

        <!-- Instagram !-->
      </div>
      <!-- [end] -->
    </div>

    <section class="texts" style="min-height: 100vh;">
      <div class="o-container">
        <p class="o-text">
          Hello, searcher.<br />
          <br />
          We are looking for a Junior Designer to join our team. Really we want someone who loves to create and is
          pretty damn good at doing so. We are a rapidly growing agency where you’ll find yourself with significant
          creative freedom and ownership. This is your moment for the taking. If you’ve ever felt that you’re not seeing
          the impact of your work, this is the perfect role for you. We’ll rely on you to make decisions and create
          beautiful and differentiated designs for industries ranging from technology, wine, fashion, cannabis, coffee
          and everything in between. Be ready to dream big and bring it to life.
        </p>
      </div>
    </section>

    <section class="lists" style="min-height: 100vh;">
      <div class="o-container">
        <ul class="o-list">
          <li>A degree in Graphic Design or related field</li>
          <li>2+ years of experience working in a design or creative studio environment</li>
          <li>Proficient in Keynote, Powerpoint, and Google Suite</li>
          <li>Strong communication skills, team-player attitude, and ability to self-manage</li>
        </ul>
      </div>
    </section>

    <section class="anchor-navs" style="min-height: 100vh; position: relative; overflow: hidden;">
      <div class="o-container">
        <!-- [begin] accordion -->
        <article
          v-for="(accordion, index) in accordions"
          :key="index"
          class="c-accordion"
          :class="{ 'is-active': accordion.active }"
        >
          <div class="c-accordion_head" @click="accordion.active = !accordion.active">
            <h1 class="o-h -no-style">{{ accordion.title }}</h1>
            <div class="c-accordion_head_icon"></div>
          </div>
          <div class="c-accordion_body">
            <div class="c-accordion_body_content">
              {{ accordion.description }}
            </div>
          </div>
        </article>
        <!-- [end] -->
      </div>
    </section>
  </div>
  <!-- template ends -->
</template>

<script>
export default {
  data() {
    return {
      isShow: false,
      isLoaded: false,
      accordions: [
        {
          title: 'What do you do?',
          description: 'We connect clinics in Croatia and patients worldwide.',
          active: false,
        },
        {
          title: 'How much does it cost to list a clinic on your website?',
          description:
            'The website is free for people to search and contact clinics. The clinics pay a monthly subscription.',
          active: false,
        },
      ],
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

<style lang="scss"></style>
