<template>
  <div :class="{ 'is-loaded': isLoaded }">
    <section class="o-section -padding-top" data-colorset="generic">
      <div class="o-container">
        <div class="o-layout -gutter">
          <div class="o-layout_item u-1/4@from-medium || u-margin-bottom-2 u-relative o-title-wrap">
            <span class="o-h3 o-title -last-horizontal" :class="{ 'is-show': isShow }">
              <span class="o-title_row">
                <span class="o-title_row_inner">Meet</span>
              </span>
              <span class="o-title_row">
                <span class="o-title_row_inner">them </span>
              </span>
              <span class="o-title_row">
                <span class="o-title_row_inner">here</span>
              </span>
            </span>

            <span class="o-section_caption">You won’t believe what they’ve been through</span>
          </div>

          <div class="o-layout_item u-3/4@from-medium">
            <span class="o-sticky -persistent"></span>
            <div class="c-filters || u-margin-bottom-4">
              <span class="o-label || u-margin-bottom"> Filter by</span>
              <form class="c-filters_container">
                <div class="c-filters_item">
                  <span class="c-filters_item_label">COUNTRY</span>
                  <select id="countrySelector" class="c-filters_item_select">
                    <option value="">COUNTRY</option>
                    <option value="13483">FRANCE</option>
                    <option value="13409">CANADA</option>
                    <option value="13799">UNITED STATES</option>
                    <option value="13377">BULGARIA</option>
                    <option value="13727">SWEDEN</option>
                    <option value="13783">TURKEY</option>
                  </select>

                  <span class="c-filters_item_arrow">
                    <svg viewBox="0 0 20 16.8">
                      <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                    </svg>
                  </span>
                </div>

                <div class="c-filters_item" data-filterspatients="item">
                  <span class="c-filters_item_label" data-filterspatients="label">ETHNICITY</span>

                  <select id="ethnicitySelector" class="c-filters_item_select" data-filterspatients="selectEthnicity">
                    <option value="">ETHNICITY</option>
                    <option value="96">WHITE</option>
                    <option value="97">ASIAN</option>
                    <option value="98">BLACK</option>
                    <option value="99">ARAB</option>
                    <option value="100">FIRST NATIONS</option>
                    <option value="101">HISPANIC</option>
                    <option value="102">METIS</option>
                    <option value="104">JEWISH</option>
                    <option value="38095">UNKNOWN</option>
                    <option value="38099">OTHER</option>
                  </select>

                  <span class="c-filters_item_arrow">
                    <svg viewBox="0 0 20 16.8">
                      <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                    </svg>
                  </span>
                </div>
              </form>
            </div>

            <div id="preview-list" class="c-preview-list">
              <div class="o-layout -gutter-big">
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 43.33% 48.67%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Leo Ivic</span><br />
                          <span>Acute Lymphoblastic Leukemia T</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Croatia (Hrvatska), France, Japan</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
                      </div>
                    </div>
                  </a>
                </article>
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 51.76% 16.11%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Cally Clifton</span><br />
                          <span>Acute Myeloid Leukemia (secondary to Myelofibrosis)</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Lebanon</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
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

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Maria</span><br />
                          <span>Chronic Myelomonocytic Leukemia</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Philippines</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
                      </div>
                    </div>
                  </a>
                </article>
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 51.14% 20.96%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Aaryan Dinh-Ali</span><br />
                          <span>Very Severe Aplastic Anemia</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Afghanistan, Viet Nam</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
                      </div>
                    </div>
                  </a>
                </article>
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 45.08% 32.6%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Erik Jaime</span><br />
                          <span>Myelodysplastic Syndromes (MDS)</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — WHITE, BLACK</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
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

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Don Nguyen</span><br />
                          <span>Acute Myeloid Leukemia</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Viet Nam</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
                      </div>
                    </div>
                  </a>
                </article>
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 46.9% 30.42%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Martin Lintag</span><br />
                          <span
                            >Mixed Phenotype Acute Leukemia (acute myeloid leukemia &amp; acute lymphoblastic
                            leukemia)</span
                          >
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Philippines</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
                      </div>
                    </div>
                  </a>
                </article>
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 50.33% 28.47%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Roshlind Kate Mance</span><br />
                          <span>Aplastic Anemia &amp; Paroxysmal Nocturnal Hemoglobinuria</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Philippines</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
                      </div>
                    </div>
                  </a>
                </article>
                <article class="o-layout_item || u-1/2@from-small">
                  <a class="c-preview" href="">
                    <figure class="c-preview_image-wrap || o-image">
                      <div
                        class="c-preview_image"
                        style="background-image: url('//placedog.net/400/200'); background-position: 50.65% 20.64%;"
                      ></div>
                    </figure>

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Marell Tomeh</span><br />
                          <span>Acute Lymphoblastic Leukemia</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Syria</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
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

                    <div class="c-preview_content">
                      <div class="c-preview_content_inner">
                        <h1 class="c-preview_content_title || o-label">
                          <span>Oyku Arin Sen</span><br />
                          <span>Leukemia</span>
                        </h1>

                        <span class="c-preview_content_type"> Looking </span>

                        <span class="c-preview_content_info">Ethnicity — Turkey</span>

                        <spa class="c-preview_content_arrow">
                          <svg viewBox="0 0 20 16.8">
                            <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
                          </svg>
                        </spa>
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
                  <svg viewBox="0 0 20 16.8">
                    <path d="M12,16.8l-1.4-1.4l6-6H0v-2h16.6l-6-6L12,0l7.7,7.7c0.4,0.4,0.4,1,0,1.4L12,16.8z" />
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
