<script lang="ts">
  import ProjectPage from '../components/project-page.svelte';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<ProjectPage id="project-recipe-book">
  {#snippet presenter()}
    <iframe title="Recipe Book" src="https://jorin-liesse.github.io/Recipe-Book/" loading="lazy"></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/html-icon.svg" alt="HTML icon" title="HTML" />
    <SkillCard icon="icons/css-icon.svg" alt="CSS icon" title="CSS" />
    <SkillCard icon="icons/javascript-icon.svg" alt="JavaScript icon" title="JavaScript" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        This project is a dynamic recipe book where users can add and remove recipes. Data is stored in a MongoDB database and managed through an
        Express.js backend API hosted on Render. The frontend, built with HTML, CSS, and JavaScript, interacts with the backend to display and update
        recipes in real time, and is hosted on GitHub Pages.
      </p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Recipe-Book" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github Frontend" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Recipes-API" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github Backend" />
    </a>
    <a href="https://jorin-liesse.github.io/Recipe-Book/" class="link" target="_blank">
      <Button icon="icons/website.svg" alt="Website Icon" title="Website" />
    </a>
  {/snippet}
</ProjectPage>
