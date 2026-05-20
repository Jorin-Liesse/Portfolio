<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Flappy-Bird',
    title: 'Flappy Bird Clone',
    category: 'Games',
    categories: ['Games', 'Best'],
    avif: asset('/images-AV1/page-flappy-bird.avif'),
    fallback: asset('/images-fallback/page-flappy-bird.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <iframe class="presenter-content" title="Flappy Bird Clone" src="https://jorin-liesse.github.io/Flappy-Bird-JS/?muteMusic=true" loading="lazy"></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/html-icon.svg')} alt="HTML icon" title="HTML" />
    <SkillCard icon={asset('/icons/css-icon.svg')} alt="CSS icon" title="CSS" />
    <SkillCard icon={asset('/icons/javascript-icon.svg')} alt="JavaScript icon" title="JavaScript" />
    <SkillCard icon={asset('/icons/photoshop-icon.svg')} alt="Photoshop icon" title="Photoshop" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        Flappy Bird Clone is a recreation of the classic Flappy Bird, designed to deliver a fun and nostalgic experience. It features simple controls and addictive, challenging gameplay that captures
        the charm of the original.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Flappy-Bird-JS" class="link" target="_blank">
      <Button src={asset('/icons/github.svg')} title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Flappy-Bird-JS/" class="link" target="_blank">
      <Button src={asset('/icons/website.svg')} title="Website" />
    </a>
  {/snippet}
</ProjectPage>
