<template>
  <article class="o-layout_item || u-1/2@from-small">
    <a class="c-preview" href="">
      <figure class="c-preview_image-wrap || o-image">
        <div
          class="c-preview_image"
          :style="`background-image: url('` + imagePath + `'); background-position: 50% 50%;`"
        ></div>
      </figure>

      <div class="c-preview_body">
        <h1 class="c-preview_title">{{ clinic.name }}</h1>
        <div class="c-preview_location">
          <span>{{ clinic.city.name }}, Croatia</span>
        </div>
        <!-- <div class="c-preview_accreditations">
          <span>icon</span> <span>icon</span> <span>icon</span> <span>icon</span> <span>icon</span>
        </div> -->
        <div class="c-preview_author">
          <span>Paul Chauffman, Head of Caridology</span>
        </div>
        <div v-if="firstTreatment">
          <div class="c-preview_review">
            <div class="c-preview_procedure_name">
              <span>{{ firstTreatment.name }}</span>
            </div>
            <!-- <div class="c-preview_procedure_comment">
            <span>I thought the entire experience was exceptional. Highly recommended.</span>
          </div> -->
          </div>
          <div class="c-preview_price">
            <span v-if="firstTreatment.price" class="c-preview_price"> Price: $ {{ firstTreatment.price }} </span>
            <span v-else class="c-preview_price">PRICE UPON REQUEST</span>
          </div>
        </div>
        <div class="c-preview_buttons">
          <span class="o-icon">
            <svg viewBox="0 0 25 22">
              <path d="M.28 10.091H20.8l-8.086-8.086L14 .72 24.28 11 14 21.28l-1.285-1.285 8.086-8.086H.28V10.09z" />
            </svg>
          </span>
        </div>
      </div>
    </a>
  </article>
</template>

<script>
export default {
  props: {
    clinic: {
      type: Object,
      required: true,
    },
  },
  computed: {
    imagePath() {
      if (this.clinic.gallery) {
        return this.clinic.gallery.images.split(',')[0];
      }

      return false;
    },
    firstTreatment() {
      return this.clinic.treatments[0] || false;
    },
  },
};
</script>

<style></style>
