<script lang="ts">
  import ArticlePage from '../components/article-page.svelte';
  import ProjectItem from '../components/project-item.svelte';

  import type { ProjectModule } from '$lib/types/project-module';
  const modules = import.meta.glob<ProjectModule>('../projects/*.svelte', { eager: true });

  export let active = false;

  const projects = Object.values(modules).map((module) => ({
    component: module.default,
    metadata: module.projectMetadata
  }));
</script>

<ArticlePage title="projects" id="projects" {active}>
  <ul class="filter-list">
    <li class="filter-item"><button data-filter-btn>Best</button></li>
    <li class="filter-item"><button data-filter-btn>Games</button></li>
    <li class="filter-item"><button data-filter-btn>Models</button></li>
    <li class="filter-item"><button data-filter-btn>Websites</button></li>
    <li class="filter-item"><button data-filter-btn>UI</button></li>
    <li class="filter-item"><button data-filter-btn>All</button></li>
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

  <ul class="project-list">
    {#each projects as project (project.metadata.link)}
      <ProjectItem {...project.metadata} />
    {/each}
  </ul>

  {#each projects as project (project.metadata.link)}
    <svelte:component this={project.component} />
  {/each}
</ArticlePage>

<style>
  .select-icon {
    --primary-color: var(--orange-yellow);
    width: 1rem;
    height: 1rem;
  }
</style>
