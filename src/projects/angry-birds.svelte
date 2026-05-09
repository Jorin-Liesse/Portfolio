<script lang="ts">
  import ProjectPage from '../components/project-page.svelte';
  
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<ProjectPage id="project-angry-birds">
  {#snippet presenter()}
     <iframe title="Angry Birds Clone" src="https://jorin-liesse.github.io/Angry-Birds-JS/?muteMusic=true" loading="lazy"></iframe>
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
        Angry Birds Clone is a faithful recreation of the classic Angry Birds game, designed to deliver a fun and nostalgic experience. The game
        features simple controls, intuitive physics-based gameplay, and engaging levels that capture the charm of the original.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Angry-Birds-JS" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Angry-Birds-JS/" class="link" target="_blank">
      <Button icon="icons/website.svg" alt="Website Icon" title="Website" />
    </a>
  {/snippet}
</ProjectPage>
