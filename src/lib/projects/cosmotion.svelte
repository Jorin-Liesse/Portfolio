<script module lang="ts">
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-cosmotion',
    title: 'CosMotion',
    category: 'Games',
    categories: ['Games', 'Best'],
    avif: 'images-AV1/page-cosmotion.avif',
    fallback: 'images-fallback/page-cosmotion.jpg'
  };
</script>

<ProjectPage id="project-cosmotion">
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-cosmotion.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-cosmotion.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/html-icon.svg" alt="HTML icon" title="HTML" />
    <SkillCard icon="icons/css-icon.svg" alt="CSS icon" title="CSS" />
    <SkillCard icon="icons/javascript-icon.svg" alt="JavaScript icon" title="JavaScript" />
    <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
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
        <source srcset="images-AV1/cosmotion/asteroids-game.avif" type="image/avif" />
        <img src="images-fallback/cosmotion/asteroids-game.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/cosmotion/bugs-game.avif" type="image/avif" />
        <img src="images-fallback/cosmotion/bugs-game.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/cosmotion/doors-game.avif" type="image/avif" />
        <img src="images-fallback/cosmotion/doors-game.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/cosmotion/hosting.avif" type="image/avif" />
        <img src="images-fallback/cosmotion/hosting.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/cosmotion/connecting.avif" type="image/avif" />
        <img src="images-fallback/cosmotion/connecting.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/cosmotion/selection.avif" type="image/avif" />
        <img src="images-fallback/cosmotion/selection.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}
</ProjectPage>
