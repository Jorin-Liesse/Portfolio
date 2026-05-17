<script lang="ts">
  import ArticlePage from '../components/article-page.svelte';
  import ProjectItem from '../components/project-item.svelte';

  import { ALL_CATEGORIES, type Category } from '$lib/types/category';
  import type { ProjectModule } from '$lib/types/project-module';

  const modules = import.meta.glob<ProjectModule>('../projects/*.svelte', { eager: true });

  let { active = false } = $props<{ active: boolean }>();

  let activeProject = $state<string | null>(null);
  let activeCategory = $state<Category>('Best');

  const projects = Object.values(modules).map((module) => ({ component: module.default, metadata: module.projectMetadata }));

  const filteredProjects = $derived(activeCategory === 'All' ? projects : projects.filter((p) => p.metadata.categories.includes(activeCategory)));

  const activeProjectComponent = $derived(projects.find((p) => p.metadata.link === activeProject));

  function setCategory(category: Category) {
    activeCategory = category;
    closeProject();
  }

  export function openProject(link: string) {
    activeProject = link;
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  export function closeProject() {
    activeProject = null;
  }
</script>

<ArticlePage title="projects" id="projects" {active}>
  <ul class="filter-list">
    {#each ALL_CATEGORIES as category}
      <li class="filter-item">
        <button class:active={activeCategory === category} onclick={() => setCategory(category)} data-filter-btn>
          {category}
        </button>
      </li>
    {/each}
  </ul>

  <div class="filter-select-box">
    <button class="filter-select">
      <div class="select-value">{activeCategory}</div>
      <svg class="select-icon"><use href="icons/chevron.svg"></use></svg>
    </button>

    <ul class="select-list">
      {#each ALL_CATEGORIES as category}
        <li class="select-item">
          <button onclick={() => setCategory(category)} data-select-item>{category}</button>
        </li>
      {/each}
    </ul>
  </div>

  {#if activeProject === null}
    <ul class="project-list">
      {#each filteredProjects as project (activeCategory + project.metadata.link)}
        <ProjectItem {...project.metadata} onclick={() => openProject(project.metadata.link)} />
      {/each}
    </ul>
  {/if}

  {#if activeProjectComponent}
    <activeProjectComponent.component />
  {/if}
</ArticlePage>

<style>
  .select-icon {
    --primary-color: var(--orange-yellow);
    width: 1rem;
    height: 1rem;
  }
</style>
