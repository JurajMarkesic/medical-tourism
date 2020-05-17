<template>
  <div :class="{ 'is-loaded': isLoaded }">
    <section class="o-section -padding-top" data-colorset="generic">
      <div class="o-container">
        <div class="o-layout -gutter -reverse">
          <div class="o-layout_item u-1/3@from-medium u-1/4@from-big">
            <!-- <span class="o-label || u-margin-bottom">Sort by:</span> -->
            <form class="c-filters_container">
              <div class="c-filters_item">
                <label class="c-filters_item_label" for="sortBySelector">Sort by</label>
                <select id="sortBySelector" class="c-filters_item_select">
                  <!-- <option value="">Sort by</option> -->
                  <option value="">Relevancy</option>
                  <option value="">Number of Reviews</option>
                  <option value="">A-Z</option>
                  <option value="">Z-A</option>
                  <option value="">Price - lowest first</option>
                  <option value="">Price - highest first</option>
                </select>

                <span class="c-filters_item_arrow || o-icon">
                  <svg viewBox="0 0 21 24">
                    <path
                      d="M11.188 0v20.521l8.086-8.086 1.285 1.285L10.28 24 0 13.72l1.285-1.285 8.086 8.086V0h1.817z"
                    />
                  </svg>
                </span>
              </div>
            </form>
          </div>
        </div>
        <div class="o-layout -gutter">
          <div class="o-layout_item u-1/3@from-medium u-1/4@from-big">
            <div class="c-filters || u-margin-bottom-4">
              <span class="o-label || u-margin-bottom">Filter by:</span>
              <form class="c-filters_container">
                <div class="c-filters_item -fullwidth">
                  <input id="id-display-priced-listings" checked class="o-checkbox" type="checkbox" />
                  <label class="c-filters_item_checkbox_label || o-checkbox-label" for="id-display-priced-listings">
                    <span class="o-checkbox-label_text">Display priced listings only</span>
                  </label>
                </div>
                <div class="c-filters_item">
                  <label class="c-filters_item_label" for="citySelector">Choose a City</label>
                  <select id="citySelector" class="c-filters_item_select">
                    <option value="">Choose a City</option>
                    <option value="zagreb">Zagreb</option>
                    <option value="split">Split</option>
                    <option value="rijeka">Rijeka</option>
                    <option value="osijek">Osijek</option>
                    <option value="varazdin">Varaždin</option>
                    <option value="dubrovnik">Dubrovnik</option>
                  </select>

                  <span class="c-filters_item_arrow || o-icon">
                    <svg viewBox="0 0 21 24">
                      <path
                        d="M11.188 0v20.521l8.086-8.086 1.285 1.285L10.28 24 0 13.72l1.285-1.285 8.086 8.086V0h1.817z"
                      />
                    </svg>
                  </span>
                </div>
              </form>
            </div>
          </div>

          <div class="o-layout_item  u-2/3@from-medium u-3/4@from-big">
            <div id="preview-list" class="c-preview-list">
              <div class="o-layout -gutter">
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 50% 50%;"
                      ></div>
                    </figure>

                    <div class="c-preview_body">
                      <h1 class="c-preview_title">Poliklinika Bagatin</h1>
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
                          <svg viewBox="0 0 25 22">
                            <path
                              d="M.28 10.091H20.8l-8.086-8.086L14 .72 24.28 11 14 21.28l-1.285-1.285 8.086-8.086H.28V10.09z"
                            />
                          </svg>
                        </span>
                      </div>
                    </div>
                  </a>
                </article>

                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 50% 50%;"
                      ></div>
                    </figure>

                    <div class="c-preview_body">
                      <h1 class="c-preview_title">Poliklinika Bagatin</h1>
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
                          <svg viewBox="0 0 25 22">
                            <path
                              d="M.28 10.091H20.8l-8.086-8.086L14 .72 24.28 11 14 21.28l-1.285-1.285 8.086-8.086H.28V10.09z"
                            />
                          </svg>
                        </span>
                      </div>
                    </div>
                  </a>
                </article>
              </div>
            </div>

            <div class="c-pager">
              <div class="c-pager_inner">
                <ul>
                  <li>
                    <a class="active" href="">1</a>
                  </li>
                  <li>
                    <a href="">2</a>
                  </li>
                  <li>
                    <a href="">3</a>
                  </li>
                  <li>
                    <a href="">4</a>
                  </li>
                </ul>

                <a class="c-pager_arrow -next" href="">
                  <svg viewBox="0 0 25 22">
                    <path
                      d="M.28 10.091H20.8l-8.086-8.086L14 .72 24.28 11 14 21.28l-1.285-1.285 8.086-8.086H.28V10.09z"
                    />
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
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
