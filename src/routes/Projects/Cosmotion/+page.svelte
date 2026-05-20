<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Cosmotion',
    title: 'CosMotion',
    category: 'Games',
    categories: ['Games', 'Best'],
    avif: asset('/images-AV1/page-cosmotion.avif'),
    fallback: asset('/images-fallback/page-cosmotion.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src={asset('/video-AV1/presenter-cosmotion.webm')} type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src={asset('/video-fallback/presenter-cosmotion.mp4')} type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/unity-icon.svg')} alt="Unity icon" title="Unity" />
    <SkillCard icon={asset('/icons/affinity-designer-icon.svg')} alt="Affinity Designer icon" title="Affinity Designer" />
    <SkillCard icon={asset('/icons/blender-icon.svg')} alt="Blender icon" title="Blender" />
    <SkillCard icon={asset('/icons/photoshop-icon.svg')} alt="Photoshop icon" title="Photoshop" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        CosMotion is a mobility game developed by a team of six people for the Sport Innovatie Campus in Bruges. It is designed to be played on two connected tables, featuring four minigames that
        players experience together. In each game, players control the gameplay by moving their hands in front of a camera, encouraging physical interaction and movement in a fun way. I was partially
        responsible for both the design and development of the games.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/cosmotion/asteroids-game.avif')} type="image/avif" />
        <img src={asset('/images-fallback/cosmotion/asteroids-game.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/cosmotion/bugs-game.avif')} type="image/avif" />
        <img src={asset('/images-fallback/cosmotion/bugs-game.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/cosmotion/doors-game.avif')} type="image/avif" />
        <img src={asset('/images-fallback/cosmotion/doors-game.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/cosmotion/hosting.avif')} type="image/avif" />
        <img src={asset('/images-fallback/cosmotion/hosting.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/cosmotion/connecting.avif')} type="image/avif" />
        <img src={asset('/images-fallback/cosmotion/connecting.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/cosmotion/selection.avif')} type="image/avif" />
        <img src={asset('/images-fallback/cosmotion/selection.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}
</ProjectPage>
