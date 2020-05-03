<template>
  <div>
    <section class="headings" style="min-height: 100vh;">
      <p>Headings</p>
      <h1 class="o-h1">H1 / Content Title</h1>
      <h2 class="o-h2">H2 / Content Title</h2>
      <h3 class="o-h3">H3 / Content Title</h3>
      <h4 class="o-h4">H4 / Content Title</h4>
      <h5 class="o-h5">H5 / Content Title</h5>
      <h6 class="o-h6">H6 / Content Title</h6>
    </section>

    <section class="buttons" style="min-height: 100vh;">
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
    </section>

    <section class="buttons" style="min-height: 100vh;">
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
    </section>

    <section class="inputs" style="min-height: 100vh;">
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
    </section>
  </div>
</template>

<script>
export default {};
</script>

<style></style>
