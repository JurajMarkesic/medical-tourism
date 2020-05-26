<template>
  <div class="is-loaded">
    <section class="o-section -padding-top">
      <div class="o-container">
        <article class="c-clinic">
          <h1 class="o-h2">Poliklinika Bagatin</h1>
          <div class="">
            <span>Zagreb, Croatia</span>
          </div>

          <ul class="c-clinic_menu">
            <li class="c-clinic_menu_item is-current">
              <a class="c-clinic_menu_item_link" href="#goto-treatments">Treatments</a>
            </li>
            <li class="c-clinic_menu_item">
              <a class="c-clinic_menu_item_link" href="#goto-amenities">Amenities</a>
            </li>
            <li class="c-clinic_menu_item">
              <a class="c-clinic_menu_item_link" href="#goto-staff">Staff</a>
            </li>
            <li class="c-clinic_menu_item">
              <a class="c-clinic_menu_item_link" href="#goto-gallery">Gallery</a>
            </li>
            <li class="c-clinic_menu_item">
              <a class="c-clinic_menu_item_link" href="#goto-reviews">Reviews</a>
            </li>
          </ul>

          <div id="goto-treatments" class="o-layout -gutter">
            <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
              <figure class="c-preview_image-wrap || o-image">
                <div
                  class="c-preview_image"
                  style="background-image: url('//placedog.net/400/200'); background-position: 50% 50%;"
                ></div>
              </figure>
            </div>

            <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
              <div class="o-table">
                <div class="o-table_row">
                  <div class="o-table_row_treatment">
                    <span class="o-table_row_treatment_name">Plastic Surgeon Consultation</span>
                    <span class="o-table_row_treatment_price">846 kn - 1015 kn</span>
                  </div>
                  <a href="" class="o-table_row_treatment_button || o-button" type="button" aria-label="Enquire now">
                    <span class="o-button_label">Enquire now</span>
                    <span class="o-button_icon">
                      <svg viewBox="0 0 20 16.8">
                        <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                      </svg>
                    </span>
                  </a>
                </div>
                <div class="o-table_row">
                  <div class="o-table_row_treatment">
                    <span class="o-table_row_treatment_name">Tummy Tuck</span>
                    <span class="o-table_row_treatment_price">43999 kn - 58806 kn</span>
                  </div>
                  <a href="" class="o-table_row_treatment_button || o-button" type="button" aria-label="Enquire now">
                    <span class="o-button_label">Enquire now</span>
                    <span class="o-button_icon">
                      <svg viewBox="0 0 20 16.8">
                        <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                      </svg>
                    </span>
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div id="goto-amenities" class="o-layout -gutter">
            <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
              amenities
            </div>

            <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
              amenities
            </div>
          </div>

          <div id="goto-staff" class="o-layout -gutter">
            <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
              staff
            </div>

            <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
              staff
            </div>
          </div>

          <div id="goto-gallery" class="o-layout -gutter">
            <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
              gallery
            </div>

            <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
              gallery
            </div>
          </div>

          <div id="goto-reviews" class="o-layout -gutter">
            <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
              reviews
            </div>

            <div class="o-layout_item u-1/2@from-small u-3/5@from-large">
              reviews
            </div>
          </div>
        </article>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
};
</script>
