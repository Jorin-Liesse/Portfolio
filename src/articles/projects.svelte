<script lang="ts">
  import ArticlePage from '../components/article-page.svelte';
  import ProjectItem from '../components/project-item.svelte';

  // import type { Category } from "$lib/types/category";

  import type { ProjectModule } from '$lib/types/project-module';
  const modules = import.meta.glob<ProjectModule>('../projects/*.svelte', { eager: true });

  export let active = false;

  const projects = Object.values(modules).map((module) => ({
    component: module.default,
    metadata: module.projectMetadata
  }));

  let activeProject: string | null = null;

  // let activeFilter: Category = "All";

  export function openProject(link: string) {
    activeProject = link;
    window.scrollTo({ top: 0, behavior: 'smooth' });
    console.log('Opening project:', link);
  }

  export function closeProject() {
    activeProject = null;
  }
</script>

<ArticlePage title="projects" id="projects" {active}>
  <ul class="filter-list">
    <li class="filter-item"><button onclick={closeProject} data-filter-btn>Best</button></li>
    <li class="filter-item"><button onclick={closeProject} data-filter-btn>Games</button></li>
    <li class="filter-item"><button onclick={closeProject} data-filter-btn>Models</button></li>
    <li class="filter-item"><button onclick={closeProject} data-filter-btn>Websites</button></li>
    <li class="filter-item"><button onclick={closeProject} data-filter-btn>UI</button></li>
    <li class="filter-item"><button onclick={closeProject} data-filter-btn>All</button></li>
  </ul>

  <div class="filter-select-box">
    <button class="filter-select" data-select>
      <div class="select-value" data-select-value>Select category</div>
      <svg class="select-icon"><use href="icons/chevron.svg"></use></svg>
    </button>

    <ul class="select-list">
      <li class="select-item"><button data-select-item>Best</button></li>
      <li class="select-item"><button data-select-item>Games</button></li>
      <li class="select-item"><button data-select-item>Models</button></li>
      <li class="select-item"><button data-select-item>Websites</button></li>
      <li class="select-item"><button data-select-item>UI</button></li>
      <li class="select-item"><button data-select-item>All</button></li>
    </ul>
  </div>

  {#if activeProject === null}
    <ul class="project-list">
      {#each projects as project (project.metadata.link)}
        <ProjectItem {...project.metadata} onclick={openProject} />
      {/each}
    </ul>
  {/if}

  {#each projects as project (project.metadata.link)}
    {#if activeProject === project.metadata.link}
      <svelte:component this={project.component} />
    {/if}
  {/each}
</ArticlePage>

<style>
  .select-icon {
    --primary-color: var(--orange-yellow);
    width: 1rem;
    height: 1rem;
  }
</style>
