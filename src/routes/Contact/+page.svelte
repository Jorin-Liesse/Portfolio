<script lang="ts">
  import Button from '$lib/components/button.svelte';
</script>

<h2 class="h2 article-title">Contact</h2>

<section class="mapbox" data-mapbox>
  <figure>
    <iframe
      src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d20404.667372590605!2d5.35980497922029!3d50.98986716196211!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c0dca529feeeb3%3A0x8e106b751973470!2sZonhoven%2C%20Belgium!5e0!3m2!1sen!2s!4v1679754843276!5m2!1sen!2s"
      width="400"
      height="300"
      title="Google Maps location of Zonhoven, Belgium"
      loading="lazy"
    ></iframe>
  </figure>
</section>

<section class="contact-form">
  <h3 class="h3 form-title">Contact Form</h3>

  <form action="https://formsubmit.co/bff3948066a07247c417dda06165bbba" method="POST">
    <div class="input-wrapper">
      <input type="text" name="fullname" class="form-input" placeholder="Full name" />
      <input type="email" name="email" class="form-input" placeholder="Email address" />
    </div>

    <textarea name="message" class="form-input" placeholder="Your Message"></textarea>

    <Button src="icons/send.svg" title="Send Message" />
  </form>
</section>

<style></style>
