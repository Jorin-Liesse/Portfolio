<script>
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-artisans-desk project-page">
  <div class="project-presenter iframe-presenter-container">
    <iframe
      title="DAE Artisan's Desk"
      frameborder="0"
      allow="autoplay; fullscreen; xr-spatial-tracking"
      loading="lazy"
      src="https://sketchfab.com/models/be6dc040ddd34b8b8098d701060cc195/embed?autospin=1&autostart=1&camera=0&preload=1&transparent=1&ui_hint=0"
    >
    </iframe>
  </div>

  <div class="project-spacer"></div>

  <div class="skills-grid">
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
    <SkillCard icon="icons/substance-painter-icon.svg" alt="Substance Painter icon" title="Substance Painter" />
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block text-box">
      <p class="service-item-text centered">
        For this project, I focused on creating a soft, inviting scene featuring a castle. I used a modular workflow to build the castle efficiently
        and applied custom shaders to enhance the surrounding nature elements. I also explored volumetric fog and clouds to give the scene a more
        atmospheric and immersive feel.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/artisans-desk/albedo.avif" type="image/avif" />
        <img src="images-fallback/artisans-desk/albedo.jpg" alt="albedo render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Albedo</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/artisans-desk/wireframe.avif" type="image/avif" />
        <img src="images-fallback/artisans-desk/wireframe.jpg" alt="wireframe render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Wireframe</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/artisans-desk/emission.avif" type="image/avif" />
        <img src="images-fallback/artisans-desk/emission.jpg" alt="emission render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Emission</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/artisans-desk/smoothness.avif" type="image/avif" />
        <img src="images-fallback/artisans-desk/smoothness.jpg" alt="smoothness render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Smoothness</p>
    </div>
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://skfb.ly/pCznq" class="link" target="_blank">
      <Button icon="icons/sketchfab.svg" alt="Sketchfab Icon" title="Sketchfab" />
    </a>
  </div>
</div>
