<script lang="ts">
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-diorama-by-the-ocean project-page">
  <div class="project-presenter iframe-presenter-container">
    <iframe
      title="DAE Diorama - By the ocean"
      frameborder="0"
      allow="autoplay; fullscreen; xr-spatial-tracking"
      loading="lazy"
      src="https://sketchfab.com/models/b0e9a08a3b894b7d82541a81806481ac/embed?autostart=1&camera=0&annotations_visible=0&preload=1&transparent=1&ui_hint=2"
    >
    </iframe>
  </div>

  <div class="project-spacer"></div>

  <div class="skills-grid">
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block text-box">
      <p class="service-item-text centered">
        This 3D artwork captures the vibrant essence of a Philippines island. Bold architecture and striking colors come alive under the warm sun,
        reflecting across the serene ocean waters. Set on a sandy beach surrounded by swaying palms and lush greenery, the scene evokes the rhythmic
        crash of waves and the refreshing sea breeze. The piece is both an homage to the Philippines’ relaxed, tropical vibe and a tribute to the
        beauty of nature.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/diorama-by-the-ocean/boat.avif" type="image/avif" />
        <img src="images-fallback/diorama-by-the-ocean/boat.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/diorama-by-the-ocean/house.avif" type="image/avif" />
        <img src="images-fallback/diorama-by-the-ocean/house.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://skfb.ly/oPyCE" class="link" target="_blank">
      <Button icon="icons/sketchfab.svg" alt="Sketchfab Icon" title="Sketchfab" />
    </a>
  </div>
</div>
