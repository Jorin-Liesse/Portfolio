<script>
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-portfolio project-page">
  <div class="project-presenter iframe-presenter-container">
    <iframe title="Portfolio Website" src="https://jorin-liesse.github.io/Portfolio/" loading="lazy"></iframe>
  </div>

  <div class="project-spacer"></div>

  <div class="skills-grid">
    <SkillCard icon="icons/html-icon.svg" alt="HTML icon" title="HTML" />
    <SkillCard icon="icons/css-icon.svg" alt="CSS icon" title="CSS" />
    <SkillCard icon="icons/javascript-icon.svg" alt="JavaScript icon" title="JavaScript" />
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block text-box">
      <p class="service-item-text centered">
        I created a portfolio website to showcase my projects and works effectively. I started from a template but heavily modified it to fit my
        needs, customizing layouts, styles, and functionality to best present my skills and projects. The result is a tailored, professional site that
        highlights my work clearly and interactively.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://github.com/Jorin-Liesse/Portfolio" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
    <a href="https://jorin-liesse.github.io/Portfolio/" class="link" target="_blank">
      <Button icon="icons/website.svg" alt="Website Icon" title="Website" />
    </a>
  </div>
</div>
