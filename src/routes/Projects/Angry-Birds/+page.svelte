<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Angry-Birds',
    title: 'Angry Birds Clone',
    category: 'Games',
    categories: ['Games', 'Best'],
    avif: asset('/images-AV1/page-angry-birds.avif'),
    fallback: asset('/images-fallback/page-angry-birds.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <iframe class="presenter-content" title="Angry Birds Clone" src="https://jorin-liesse.github.io/Angry-Birds-JS/?muteMusic=true" loading="lazy"></iframe>
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
        Angry Birds Clone is a faithful recreation of the classic Angry Birds game, designed to deliver a fun and nostalgic experience. The game features simple controls, intuitive physics-based
        gameplay, and engaging levels that capture the charm of the original.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Angry-Birds-JS" class="link" target="_blank">
      <Button src={asset('/icons/github.svg')} title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Angry-Birds-JS/" class="link" target="_blank">
      <Button src={asset('/icons/website.svg')} title="Website" />
    </a>
  {/snippet}
</ProjectPage>
