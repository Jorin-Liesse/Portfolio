<script>
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-angry-birds project-page">
  <div class="project-presenter iframe-presenter-container">
    <iframe title="Angry Birds Clone" src="https://jorin-liesse.github.io/Angry-Birds-JS/?muteMusic=true" loading="lazy"></iframe>
  </div>

  <div class="project-spacer"></div>

  <div class="skills-grid">
    <SkillCard icon="icons/html-icon.svg" alt="HTML icon" title="HTML" />
    <SkillCard icon="icons/css-icon.svg" alt="CSS icon" title="CSS" />
    <SkillCard icon="icons/javascript-icon.svg" alt="JavaScript icon" title="JavaScript" />
    <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block text-box">
      <p class="service-item-text centered">
        Angry Birds Clone is a faithful recreation of the classic Angry Birds game, designed to deliver a fun and nostalgic experience. The game
        features simple controls, intuitive physics-based gameplay, and engaging levels that capture the charm of the original.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://github.com/Jorin-Liesse/Angry-Birds-JS" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Angry-Birds-JS/" class="link" target="_blank">
      <Button icon="icons/website.svg" alt="Website Icon" title="Website" />
    </a>
  </div>
</div>
