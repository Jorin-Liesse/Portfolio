<script lang="ts">
  import SkillCard from '../components/skill-card.svelte';
</script>

<div class="project-bubblebyte-ui-pack project-page">
  <picture>
    <source srcset="images-AV1/bubblebyte-ui-pack/presenter-bubblebyte-ui-pack.avif" type="image/avif" />
    <img
      class="project-presenter"
      src="images-fallback/bubblebyte-ui-pack/presenter-bubblebyte-ui-pack.jpg"
      alt="Bubblebyte UI Pack"
      loading="lazy"
    />
  </picture>

  <div class="project-spacer"></div>

  <div class="skills-grid">
    <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block text-box">
      <p class="service-item-text centered">
        For this project, I focused on creating a soft and playful UI style with rounded shapes and warm colors. The design emphasizes approachability
        and clarity, making it ideal for casual or mobile games. I used smooth gradients and subtle shadows to give the elements depth while
        maintaining a clean, friendly look.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block half">
      <video autoplay muted loop playsinline>
        <source src="video-AV1/presenter-bubblebyte-ui-pack.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
        <source src="video-fallback/presenter-bubblebyte-ui-pack.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
      </video>
      <p class="h5 on-top-text">Show Case</p>
    </div>

    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/bubblebyte-ui-pack/title-screen.avif" type="image/avif" />
        <img src="images-fallback/bubblebyte-ui-pack/title-screen.jpg" alt="title screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Title Screen</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/bubblebyte-ui-pack/extra-info-screen.avif" type="image/avif" />
        <img src="images-fallback/bubblebyte-ui-pack/extra-info-screen.jpg" alt="extra info screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Extra Info Screen</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/bubblebyte-ui-pack/graphics-settings-screen.avif" type="image/avif" />
        <img src="images-fallback/bubblebyte-ui-pack/graphics-settings-screen.jpg" alt="graphics settings screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Graphics Settings</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/bubblebyte-ui-pack/sound-settings-screen.avif" type="image/avif" />
        <img src="images-fallback/bubblebyte-ui-pack/sound-settings-screen.jpg" alt="sound settings screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Sound Settings</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/bubblebyte-ui-pack/controls-settings-screen.avif" type="image/avif" />
        <img src="images-fallback/bubblebyte-ui-pack/controls-settings-screen.jpg" alt="controls settings screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Controls Settings</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/bubblebyte-ui-pack/paused-screen.avif" type="image/avif" />
        <img src="images-fallback/bubblebyte-ui-pack/paused-screen.jpg" alt="paused screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Paused Screen</p>
    </div>
    <div class="project-block half">
      <p class="h5"></p>
    </div>
  </div>
</div>
