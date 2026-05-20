<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Steam-Engine-Simulator',
    title: 'Steam Engine Simulator',
    category: 'Games',
    categories: ['Games'],
    avif: asset('/images-AV1/page-steam-engine-simulator.avif'),
    fallback: asset('/images-fallback/page-steam-engine-simulator.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src={asset('/video-AV1/presenter-steam-engine-simulator.webm')} type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src={asset('/video-fallback/presenter-steam-engine-simulator.mp4')} type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/unity-icon.svg')} alt="Unity icon" title="Unity" />
    <SkillCard icon={asset('/icons/cs-icon.svg')} alt="C# icon" title="C Sharp" />
    <SkillCard icon={asset('/icons/blender-icon.svg')} alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        This project is a Research Competence (OZC) assignment that simulates a steam engine using Unity. It includes interactive elements, allowing users to explore and learn how a steam engine works
        in an engaging and hands-on way.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/steam-engine-simulator/game.avif')} type="image/avif" />
        <img src={asset('/images-fallback/steam-engine-simulator/game.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/steam-engine-simulator/sketchfab.avif')} type="image/avif" />
        <img src={asset('/images-fallback/steam-engine-simulator/sketchfab.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Steam-Engine-Simulator" class="link" target="_blank">
      <Button src={asset('/icons/github.svg')} title="Github" />
    </a>
    <a href="https://play.unity.com/en/games/2a2c8200-4885-4aea-bf04-005cc70ef928/steam-engine-simulator" class="link" target="_blank">
      <Button src={asset('/icons/website.svg')} title="Website" />
    </a>
    <a href="https://skfb.ly/oYREX" class="link" target="_blank">
      <Button src={asset('/icons/sketchfab.svg')} title="Sketchfab" />
    </a>
  {/snippet}
</ProjectPage>
