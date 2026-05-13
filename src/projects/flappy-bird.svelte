<script module lang="ts">
  import ProjectPage from '../components/project-page.svelte';
  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-flappy-bird',
    title: 'Flappy Bird Clone',
    category: 'Games',
    categories: ['Games', 'Best'],
    avif: 'images-AV1/page-flappy-bird.avif',
    fallback: 'images-fallback/page-flappy-bird.jpg'
  };
</script>

<ProjectPage id="project-flappy-bird">
  {#snippet presenter()}
    <iframe class="presenter-content" title="Flappy Bird Clone" src="https://jorin-liesse.github.io/Flappy-Bird-JS/?muteMusic=true" loading="lazy"></iframe>
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
        Flappy Bird Clone is a recreation of the classic Flappy Bird, designed to deliver a fun and nostalgic experience. It features simple controls and addictive, challenging gameplay that captures
        the charm of the original.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Flappy-Bird-JS" class="link" target="_blank">
      <Button src="icons/github.svg" title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Flappy-Bird-JS/" class="link" target="_blank">
      <Button src="icons/website.svg" title="Website" />
    </a>
  {/snippet}
</ProjectPage>
