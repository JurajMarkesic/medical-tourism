<template>
  <div id="goto-treatments" class="o-layout -gutter">
    <div class="o-layout_item || u-1/2@from-small u-2/5@from-large">
      <figure class="c-preview_image-wrap || o-image">
        <div
          class="c-preview_image"
          :style="`background-image: url('` + imagePath + `'); background-position: 50% 50%;`"
        ></div>
      </figure>
    </div>

    <TreatmentList :treatments="recommendedClinics" />

    <div class="o-layout_item u-1/2@from-small u-3/5@from-large || o-wysiwyg">
      <h2>About us</h2>
      <p>
        Lorem ispum wow dolor sit amet wowo asdlkfjs ldkfj slkdf. Asjfdh sjkdfhskd ksdfj hskdf sdfj h. Lorem ispum wow
        dolor sit amet wowo asdlkfjs ldkfj slkdf. Asjfdh sjkdfhskd ksdfj hskdf sdfj h. Lorem ispum wow dolor sit amet
        wowo asdlkfjs ldkfj slkdf. Asjfdh sjkdfhskd ksdfj hskdf sdfj h. Lorem ispum wow dolor sit amet wowo asdlkfjs
        ldkfj slkdf. Asjfdh sjkdfhskd ksdfj hskdf sdfj h. Lorem ispum wow dolor sit amet wowo asdlkfjs ldkfj slkdf.
        Asjfdh sjkdfhskd ksdfj hskdf sdfj h.
      </p>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex';
import TreatmentList from './treatments/TreatmentsList.vue';

export default {
  components: { TreatmentList },
  computed: {
    ...mapState({
      selectedClinic: (state) => state.clinics.selectedClinic,
    }),
    recommendedClinics() {
      return this.selectedClinic.treatments.slice(0, 5);
    },
    imagePath() {
      if (this.selectedClinic.gallery) {
        return this.selectedClinic.gallery.images.split(',')[0];
      }

      return false;
    },
  },
};
</script>

<style></style>
