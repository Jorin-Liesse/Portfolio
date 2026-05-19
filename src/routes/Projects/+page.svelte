<script lang="ts">
  import ProjectItem from '$lib/components/project-item.svelte';
  import { ALL_CATEGORIES, type Category } from '$lib/types/category';
  import type { ProjectModule } from '$lib/types/project-module';

  const modules = import.meta.glob<ProjectModule>('$lib/projects/*.svelte', { eager: true });

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

<h2 class="h2 article-title">Projects</h2>

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

<style>
  .select-icon {
    --primary-color: var(--orange-yellow);
    width: 1rem;
    height: 1rem;
  }

  .filter-list {
    display: none;
  }

  .filter-select-box {
    position: relative;
    margin-bottom: 25px;
  }

  .filter-select {
    background: var(--eerie-black-2);
    color: var(--light-gray);
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    padding: 12px 16px;
    border: 1px solid var(--jet);
    border-radius: 14px;
    font-size: var(--fs-6);
    font-weight: var(--fw-300);
  }

  .select-list {
    background: var(--eerie-black-2);
    position: absolute;
    top: calc(100% + 6px);
    width: 100%;
    padding: 6px;
    border: 1px solid var(--jet);
    border-radius: 14px;
    z-index: 2;
    opacity: 0;
    visibility: hidden;
    pointer-events: none;
    transition: 0.15s ease-in-out;
  }

  .project-list {
    display: grid;
    grid-template-columns: 1fr;
    gap: 30px;
  }

  @media (min-width: 768px) {
    .project-list {
      grid-template-columns: 1fr 1fr;
    }

    .filter-list {
      display: flex;
      justify-content: flex-start;
      align-items: center;
      gap: 25px;
      padding-left: 5px;
      margin-bottom: 30px;
    }

    .filter-select-box {
      display: none;
    }

    .filter-item button {
      color: var(--light-gray);
      font-size: var(--fs-5);
      transition: var(--transition-1);
    }

    .filter-item button:hover {
      color: var(--light-gray-70);
    }

    .filter-item button.active {
      color: var(--orange-yellow);
    }
  }

  @media (min-width: 1024px) {
    .project-list {
      grid-template-columns: repeat(3, 1fr);
    }
  }
</style>
