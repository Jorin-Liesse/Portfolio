<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Bubblebyte-UI-Pack',
    title: 'Bubblebyte UI Pack',
    category: 'UI',
    categories: ['UI', 'Best'],
    avif: asset('/images-AV1/page-bubblebyte-ui-pack.avif'),
    fallback: asset('/images-fallback/page-bubblebyte-ui-pack.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <picture>
      <source srcset={asset('/images-AV1/bubblebyte-ui-pack/presenter-bubblebyte-ui-pack.avif')} type="image/avif" />
      <img class="presenter-content" src={asset('/images-fallback/bubblebyte-ui-pack/presenter-bubblebyte-ui-pack.jpg')} alt="Bubblebyte UI Pack" loading="lazy" />
    </picture>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/photoshop-icon.svg')} alt="Photoshop icon" title="Photoshop" />
  {/snippet}

  {#snippet content()}
    <div class="project-block half">
      <video autoplay muted loop playsinline>
        <source src={asset('/video-AV1/presenter-bubblebyte-ui-pack.webm')} type="video/webm; codecs=av01.0.05M.08,opus" />
        <source src={asset('/video-fallback/presenter-bubblebyte-ui-pack.mp4')} type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
      </video>
      <p class="h5 on-top-text">Show Case</p>
    </div>

    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/bubblebyte-ui-pack/title-screen.avif')} type="image/avif" />
        <img src={asset('/images-fallback/bubblebyte-ui-pack/title-screen.jpg')} alt="title screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Title Screen</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/bubblebyte-ui-pack/extra-info-screen.avif')} type="image/avif" />
        <img src={asset('/images-fallback/bubblebyte-ui-pack/extra-info-screen.jpg')} alt="extra info screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Extra Info Screen</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/bubblebyte-ui-pack/graphics-settings-screen.avif')} type="image/avif" />
        <img src={asset('/images-fallback/bubblebyte-ui-pack/graphics-settings-screen.jpg')} alt="graphics settings screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Graphics Settings</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/bubblebyte-ui-pack/sound-settings-screen.avif')} type="image/avif" />
        <img src={asset('/images-fallback/bubblebyte-ui-pack/sound-settings-screen.jpg')} alt="sound settings screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Sound Settings</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/bubblebyte-ui-pack/controls-settings-screen.avif')} type="image/avif" />
        <img src={asset('/images-fallback/bubblebyte-ui-pack/controls-settings-screen.jpg')} alt="controls settings screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Controls Settings</p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/bubblebyte-ui-pack/paused-screen.avif')} type="image/avif" />
        <img src={asset('/images-fallback/bubblebyte-ui-pack/paused-screen.jpg')} alt="paused screen render" loading="lazy" />
      </picture>
      <p class="h5 on-top-text">Paused Screen</p>
    </div>
    <div class="project-block half">
      <p class="h5"></p>
    </div>
  {/snippet}
</ProjectPage>
