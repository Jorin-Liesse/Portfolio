<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Artisans-Desk',
    title: 'Artisans Desk',
    category: 'Models',
    categories: ['Models', 'Best'],
    avif: asset('/images-AV1/page-artisans-desk.avif'),
    fallback: asset('/images-fallback/page-artisans-desk.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <iframe
      class="presenter-content"
      title="DAE Artisan's Desk"
      frameborder="0"
      allow="autoplay; fullscreen; xr-spatial-tracking"
      loading="lazy"
      src="https://sketchfab.com/models/be6dc040ddd34b8b8098d701060cc195/embed?autospin=1&autostart=1&camera=0&preload=1&transparent=1&ui_hint=0"
    ></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/unity-icon.svg')} alt="Unity icon" title="Unity" />
    <SkillCard icon={asset('/icons/blender-icon.svg')} alt="Blender icon" title="Blender" />
    <SkillCard icon={asset('/icons/substance-painter-icon.svg')} alt="Substance Painter icon" title="Substance Painter" />
  {/snippet}

  {#snippet content()}
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/artisans-desk/albedo.avif')} type="image/avif" />
        <img src={asset('/images-fallback/artisans-desk/albedo.jpg')} alt="albedo render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Albedo</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/artisans-desk/wireframe.avif')} type="image/avif" />
        <img src={asset('/images-fallback/artisans-desk/wireframe.jpg')} alt="wireframe render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Wireframe</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/artisans-desk/emission.avif')} type="image/avif" />
        <img src={asset('/images-fallback/artisans-desk/emission.jpg')} alt="emission render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Emission</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/artisans-desk/smoothness.avif')} type="image/avif" />
        <img src={asset('/images-fallback/artisans-desk/smoothness.jpg')} alt="smoothness render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Smoothness</p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://skfb.ly/pCznq" class="link" target="_blank">
      <Button src={asset('/icons/sketchfab.svg')} title="Sketchfab" />
    </a>
  {/snippet}
</ProjectPage>
