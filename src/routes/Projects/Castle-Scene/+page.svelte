<script module lang="ts">
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-castle-scene',
    title: 'Castle Scene',
    category: 'Models',
    categories: ['Models', 'Best'],
    avif: 'images-AV1/page-castle-scene.avif',
    fallback: 'images-fallback/page-castle-scene.jpg'
  };
</script>

<ProjectPage id="project-castle-scene">
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-castle-scene.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-castle-scene.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
    <SkillCard icon="icons/substance-painter-icon.svg" alt="Substance Painter icon" title="Substance Painter" />
    <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        For this project, I focused on creating a soft, inviting scene featuring a castle. I used a modular workflow to build the castle efficiently and applied custom shaders to enhance the
        surrounding nature elements. I also explored volumetric fog and clouds to give the scene a more atmospheric and immersive feel.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/02-modular.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/02-modular.jpg" alt="Detail render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Big Modular</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/01-modular.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/01-modular.jpg" alt="modular part" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Small Modular</p>
    </div>
    <div class="project-block half">
      <video autoplay muted loop playsinline>
        <source src="video-AV1/breakdown.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
        <source src="video-fallback/breakdown.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
      </video>
      <p class="h5 on-top-text">Progression</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/albedo.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/albedo.jpg" alt="albedo render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Albedo</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/ambient-occlusion.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/ambient-occlusion.jpg" alt="ambient occlusion render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Ambient Occlusion</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/normal.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/normal.jpg" alt="normal render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Normal</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/smoothness.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/smoothness.jpg" alt="smoothness render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Smoothness</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/castle-scene/metal.avif" type="image/avif" />
        <img src="images-fallback/castle-scene/metal.jpg" alt="metalness render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Metalness</p>
    </div>
  {/snippet}
</ProjectPage>
