<script>
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-recipe-book project-page">
  <div class="project-presenter iframe-presenter-container">
    <iframe title="Recipe Book" src="https://jorin-liesse.github.io/Recipe-Book/" loading="lazy"></iframe>
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
        This project is a dynamic recipe book where users can add and remove recipes. Data is stored in a MongoDB database and managed through an
        Express.js backend API hosted on Render. The frontend, built with HTML, CSS, and JavaScript, interacts with the backend to display and update
        recipes in real time, and is hosted on GitHub Pages.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://github.com/Jorin-Liesse/Recipe-Book" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github Frontend" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Recipes-API" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github Backend" />
    </a>
    <a href="https://jorin-liesse.github.io/Recipe-Book/" class="link" target="_blank">
      <Button icon="icons/website.svg" alt="Website Icon" title="Website" />
    </a>
  </div>
</div>
