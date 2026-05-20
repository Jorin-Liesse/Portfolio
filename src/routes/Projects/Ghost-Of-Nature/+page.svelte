<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Ghost-Of-Nature',
    title: 'Ghost of Nature',
    category: 'Games',
    categories: ['Games'],
    avif: asset('/images-AV1/page-ghost-of-nature.avif'),
    fallback: asset('/images-fallback/page-ghost-of-nature.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src={asset('/video-AV1/presenter-ghost-of-nature.webm')} type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src={asset('/video-fallback/presenter-ghost-of-nature.mp4')} type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/unity-icon.svg')} alt="Unity icon" title="Unity" />
    <SkillCard icon={asset('/icons/cs-icon.svg')} alt="C# icon" title="C Sharp" />
    <SkillCard icon={asset('/icons/blender-icon.svg')} alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/ghost-of-nature/start.avif')} type="image/avif" />
        <img src={asset('/images-fallback/ghost-of-nature/start.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/ghost-of-nature/end.avif')} type="image/avif" />
        <img src={asset('/images-fallback/ghost-of-nature/end.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/ghost-of-nature/enemie.avif')} type="image/avif" />
        <img src={asset('/images-fallback/ghost-of-nature/enemie.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/ghost-of-nature/hide.avif')} type="image/avif" />
        <img src={asset('/images-fallback/ghost-of-nature/hide.jpg')} alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://jorinliesse.itch.io/ghost-of-nature" class="link" target="_blank">
      <Button src={asset('/icons/itch.svg')} title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Ghost-Of-Nature" class="link" target="_blank">
      <Button src={asset('/icons/github.svg')} title="Github" />
    </a>
  {/snippet}
</ProjectPage>
