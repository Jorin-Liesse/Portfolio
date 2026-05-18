<script lang="ts">
  import About from '$lib/articles/about.svelte';
  import Resume from '$lib/articles/resume.svelte';
  import Projects from '$lib/articles/projects.svelte';
  import Contact from '$lib/articles/contact.svelte';

  import { ALL_ARTICLES, type Articles } from '$lib/types/articles';

  let aboutRef: About;
  let resumeRef: Resume;
  let projectsRef: Projects;
  let contactRef: Contact;

  let activePage: Articles = 'About';

  function setPage(page: Articles) {
    activePage = page;
    window.scrollTo({ top: 0, left: 0, behavior: 'smooth' });
    projectsRef?.closeProject();
  }
</script>

<main class="main-content">
  <nav class="navbar">
    <ul class="navbar-list">
      {#each ALL_ARTICLES as article}
        <li class="navbar-item">
          <button class="navbar-link" class:active={activePage === article} onclick={() => setPage(article)} data-select-item>{article}</button>
        </li>
      {/each}
    </ul>
  </nav>

  <About active={activePage === 'About'} bind:this={aboutRef} />
  <Resume active={activePage === 'Resume'} bind:this={resumeRef} />
  <Projects active={activePage === 'Projects'} bind:this={projectsRef} />
  <Contact active={activePage === 'Contact'} bind:this={contactRef} />
</main>

<style></style>
