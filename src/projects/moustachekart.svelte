<script lang="ts">
  import ProjectPage from '../components/project-page.svelte';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<ProjectPage id="project-moustachekart">
  {#snippet presenter()}
    <iframe
      title="MoustacheKart"
      frameborder="0"
      allow="autoplay; fullscreen; xr-spatial-tracking"
      loading="lazy"
      src="https://sketchfab.com/models/e287ca48efc3409483a7311b05df75c7/embed?autospin=1&autostart=1&camera=0&preload=1&transparent=1&ui_hint=0"
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
        I made a kart for a playful, stylized racing game, based on a jeep design. I handled every step: modeling in Blender, baking, texturing with
        PBR materials, rigging, animating, and importing into Unity. The pipeline was set up for quick iterations, keeping the kart fun, readable, and
        full of personality.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/moustachekart/albedo.avif" type="image/avif" />
        <img src="images-fallback/moustachekart/albedo.jpg" alt="albedo render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Albedo</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/moustachekart/wireframe.avif" type="image/avif" />
        <img src="images-fallback/moustachekart/wireframe.jpg" alt="wireframe render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Wireframe</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/moustachekart/normal.avif" type="image/avif" />
        <img src="images-fallback/moustachekart/normal.jpg" alt="normal render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Normal</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/moustachekart/ambient-occlusion.avif" type="image/avif" />
        <img src="images-fallback/moustachekart/ambient-occlusion.jpg" alt="ambient occlusion render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Ambient Occlusion</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/moustachekart/smoothness.avif" type="image/avif" />
        <img src="images-fallback/moustachekart/smoothness.jpg" alt="smoothness render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Smoothness</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/moustachekart/metal.avif" type="image/avif" />
        <img src="images-fallback/moustachekart/metal.jpg" alt="metal render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Metal</p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://skfb.ly/ptKUA" class="link" target="_blank">
      <Button icon="icons/sketchfab.svg" alt="Sketchfab Icon" title="Sketchfab" />
    </a>
  {/snippet}
</ProjectPage>
