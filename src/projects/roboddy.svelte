<script lang="ts">
  import ProjectPage from '../components/project-page.svelte';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<ProjectPage id="project-roboddy">
  {#snippet presenter()}
    <iframe
      title="Roboddy"
      frameborder="0"
      allow="autoplay; fullscreen; xr-spatial-tracking"
      loading="lazy"
      src="https://sketchfab.com/models/d57890b0d5204ba49b52c295d1307098/embed?autospin=1&autostart=1&camera=0&preload=1&transparent=1"
    ></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
    <SkillCard icon="icons/substance-painter-icon.svg" alt="Substance Painter icon" title="Substance Painter" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        This project features Robuddy, a retro-futuristic robot designed to assist with daily tasks in a ’70s suburban neighborhood. Modeled, rigged,
        and animated in Blender, PBR textured in Substance Painter, and rendered in Unity, Robuddy is optimized for game environments. Its whimsical
        yet practical design brings charm and personality to the scene. High-quality screenshots and a Sketchfab upload showcase the finished model
        and animations. This project was created as part of a Game Art course at DAE Howest, teaching rigging, animation, and the full PBR workflow.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/roboddy/albedo.avif" type="image/avif" />
        <img src="images-fallback/roboddy/albedo.jpg" alt="albedo render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Albedo</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/roboddy/wireframe.avif" type="image/avif" />
        <img src="images-fallback/roboddy/wireframe.jpg" alt="wireframe render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Wireframe</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/roboddy/normal.avif" type="image/avif" />
        <img src="images-fallback/roboddy/normal.jpg" alt="normal render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Normal</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/roboddy/smoothness.avif" type="image/avif" />
        <img src="images-fallback/roboddy/smoothness.jpg" alt="smoothness render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Smoothness</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/roboddy/metal.avif" type="image/avif" />
        <img src="images-fallback/roboddy/metal.jpg" alt="metal render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Metal</p>
    </div>
    <div class="project-block half">
      <p class="h5"></p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://skfb.ly/psA9t" class="link" target="_blank">
      <Button icon="icons/sketchfab.svg" alt="Sketchfab Icon" title="Sketchfab" />
    </a>
  {/snippet}
</ProjectPage>
