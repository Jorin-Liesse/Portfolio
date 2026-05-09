<script lang="ts">
  import ProjectPage from '../components/project-page.svelte';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<ProjectPage id="project-portfolio">
  {#snippet presenter()}
    <iframe title="Portfolio Website" src="https://jorin-liesse.github.io/Portfolio/" loading="lazy"></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/html-icon.svg" alt="HTML icon" title="HTML" />
    <SkillCard icon="icons/css-icon.svg" alt="CSS icon" title="CSS" />
    <SkillCard icon="icons/javascript-icon.svg" alt="JavaScript icon" title="JavaScript" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        I created a portfolio website to showcase my projects and works effectively. I started from a template but heavily modified it to fit my
        needs, customizing layouts, styles, and functionality to best present my skills and projects. The result is a tailored, professional site that
        highlights my work clearly and interactively.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Portfolio" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Portfolio/" class="link" target="_blank">
      <Button icon="icons/website.svg" alt="Website Icon" title="Website" />
    </a>
  {/snippet}
</ProjectPage>
