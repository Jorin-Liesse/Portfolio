<script lang="ts">
  import About from '../articles/about.svelte';
  import Resume from '../articles/resume.svelte';
  import Projects from '../articles/projects.svelte';
  import Contact from '../articles/contact.svelte';

  let activePage: string = 'about';

  function setPage(page: string) {
    activePage = page;
    window.scrollTo({ top: 0, left: 0, behavior: 'smooth' });
  }
</script>

<main class="main-content">
  <nav class="navbar">
    <ul class="navbar-list">
      <li class="navbar-item">
        <button class="navbar-link" class:active={activePage === 'about'} onclick={() => setPage('about')}> About </button>
      </li>

      <li class="navbar-item">
        <button class="navbar-link" class:active={activePage === 'resume'} onclick={() => setPage('resume')}> Resume </button>
      </li>

      <li class="navbar-item">
        <button class="navbar-link" class:active={activePage === 'projects'} onclick={() => setPage('projects')}> Projects </button>
      </li>

      <li class="navbar-item">
        <button class="navbar-link" class:active={activePage === 'contact'} onclick={() => setPage('contact')}> Contact </button>
      </li>
    </ul>
  </nav>

  <About active={activePage === 'about'} />
  <Resume active={activePage === 'resume'} />
  <Projects active={activePage === 'projects'} />
  <Contact active={activePage === 'contact'} />
</main>

<style></style>
