<template>
  <section class="c-modal" :class="{ 'is-open': modalOpen }">
    <div class="c-modal_container">
      <div class="c-modal_content -smaller">
        <span class="c-modal_title">Login</span>

        <form class="o-form">
          <div class="o-input-wrap">
            <label class="o-label" for="LOGIN-MODAL-EMAIL">Email*</label>
            <input id="LOGIN-MODAL-EMAIL" class="o-input" name="email" type="email" required="" />
          </div>

          <div class="o-input-wrap">
            <label class="o-label" for="LOGIN-MODAL-PASSWORD">Password*</label>
            <input id="LOGIN-MODAL-PASSWORD" class="o-input" name="password" type="password" required="" />
          </div>

          <div class="o-form-agreement || u-margin-bottom-2">
            <input id="LOGIN-MODAL-REMEMBER" checked class="o-checkbox" type="checkbox" name="remember-me" />
            <label class="c-filters_item_checkbox_label || o-checkbox-label" for="LOGIN-MODAL-REMEMBER">
              <span class="o-checkbox-label_text">Remember me?</span>
            </label>
          </div>

          <button type="submit" class="o-button -padding">
            <span class="o-button_label">Sign in</span>
          </button>
        </form>

        <div class="o-layout -gutter || u-text-center">
          <div class="o-layout_item || o-wysiwyg">
            <nuxt-link to="">Forgot password</nuxt-link>
            <nuxt-link to="/sign-up">Create new account</nuxt-link>
          </div>
        </div>
      </div>
    </div>

    <button class="c-modal_close" type="button"></button>

    <div class="c-modal_background"></div>
  </section>
</template>

<script>
export default {};
</script>

<style lang="scss"></style>
