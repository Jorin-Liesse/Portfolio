<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Portfolio',
    title: 'Portfolio',
    category: 'Websites',
    categories: ['Websites'],
    avif: asset('/images-AV1/page-portfolio.avif'),
    fallback: asset('/images-fallback/page-portfolio.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <iframe class="presenter-content" title="Portfolio Website" src="https://jorin-liesse.github.io/Portfolio/" loading="lazy"></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/html-icon.svg')} alt="HTML icon" title="HTML" />
    <SkillCard icon={asset('/icons/css-icon.svg')} alt="CSS icon" title="CSS" />
    <SkillCard icon={asset('/icons/javascript-icon.svg')} alt="JavaScript icon" title="JavaScript" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        I created a portfolio website to showcase my projects and works effectively. I started from a template but heavily modified it to fit my needs, customizing layouts, styles, and functionality
        to best present my skills and projects. The result is a tailored, professional site that highlights my work clearly and interactively.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Portfolio" class="link" target="_blank">
      <Button src={asset('/icons/github.svg')} title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Portfolio/" class="link" target="_blank">
      <Button src={asset('/icons/website.svg')} title="Website" />
    </a>
  {/snippet}
</ProjectPage>
