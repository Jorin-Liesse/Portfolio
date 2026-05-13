<script lang="ts">
  import About from '../articles/about.svelte';
  import Resume from '../articles/resume.svelte';
  import Projects from '../articles/projects.svelte';
  import Contact from '../articles/contact.svelte';

  let aboutRef: InstanceType<typeof About>;
  let resumeRef: InstanceType<typeof Resume>;
  let projectsRef: InstanceType<typeof Projects>;
  let contactRef: InstanceType<typeof Contact>;

  let activePage: string = 'about';

  function setPage(page: string) {
    activePage = page;
    window.scrollTo({ top: 0, left: 0, behavior: 'smooth' });
    projectsRef?.closeProject();
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

  <About active={activePage === 'about'} bind:this={aboutRef} />
  <Resume active={activePage === 'resume'} bind:this={resumeRef} />
  <Projects active={activePage === 'projects'} bind:this={projectsRef} />
  <Contact active={activePage === 'contact'} bind:this={contactRef} />
</main>

<style></style>
