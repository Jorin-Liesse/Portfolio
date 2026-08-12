<script lang="ts">
  import { asset } from '$app/paths';
  import { page } from '$app/state';
  import { goto } from '$app/navigation';
  import { resolve } from '$app/paths';
  import { onMount } from 'svelte';
  import type { RouteId } from '$app/types';
  import Article from '$components/article.svelte';
  import ProjectItem from '$components/project-item.svelte';
  import { ALL_CATEGORIES, type Category } from '$types/category';
  import type { ProjectModule } from '$types/project-module';

  const modules = import.meta.glob<ProjectModule>('./**/+page.svelte', { eager: true });

  const activeCategory = $derived.by<Category>(() => {
    const urlCategory = page.url.searchParams.get('category') as Category | null;
    return urlCategory ?? 'Best';
  });

  const projects = Object.entries(modules)
    .filter(([path]) => path !== './+page.svelte')
    .map(([, module]) => module.projectMetadata);

  const filteredProjects = $derived(
    activeCategory === 'All'
      ? projects
      : projects.filter((project) => project.categories.includes(activeCategory))
  );

  let isSelectOpen = $state(false);
  let selectBox: HTMLButtonElement | null = null;

  function setCategory(category: Category) {
    const url = new URL(page.url);

    url.searchParams.set('category', category);

    // eslint-disable-next-line svelte/no-navigation-without-resolve
    goto(url.pathname + url.search, { replaceState: true, noScroll: true });
  }

  function openProject(link: string) {
    goto(resolve(`/Projects/${link}` as RouteId), { noScroll: true });
  }

  function handleFilterButtonClick() {
    isSelectOpen = !isSelectOpen;
  }

  function handleClickOutside(event: MouseEvent) {
    if (!isSelectOpen) return;
    if (!selectBox) return;
    if (selectBox.contains(event.target as Node)) return;

    isSelectOpen = false;
  }

  onMount(() => {
    document.addEventListener('click', handleClickOutside);
  });
</script>

<Article title="Projects">
  <ul class="filter-list">
    {#each ALL_CATEGORIES as category (category)}
      <li class="filter-item">
        <button
          class:active={activeCategory === category}
          onclick={() => setCategory(category)}
          data-filter-btn
        >
          {category}
        </button>
      </li>
    {/each}
  </ul>

  <div class="filter-select-box">
    <button class="filter-select" onclick={handleFilterButtonClick} bind:this={selectBox}>
      <div class="select-value">{activeCategory}</div>
      <svg class="select-icon"><use href={asset('/icons/chevron.svg')}></use></svg>
    </button>
    {#if isSelectOpen}
      <ul class="select-list">
        {#each ALL_CATEGORIES as category (category)}
          <li class="select-item">
            <button onclick={() => setCategory(category)}>{category}</button>
          </li>
        {/each}
      </ul>
    {/if}
  </div>

  <ul class="project-list">
    {#each filteredProjects as project (activeCategory + project.link)}
      <ProjectItem {...project} onclick={() => openProject(project.link)} />
    {/each}
  </ul>
</Article>

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
    transition: 0.15s ease-in-out;
  }

  .project-list {
    display: grid;
    grid-template-columns: 1fr;
    gap: 30px;
  }

  .select-item button {
    background: var(--eerie-black-2);
    color: var(--light-gray);
    font-size: var(--fs-6);
    font-weight: var(--fw-300);
    text-transform: capitalize;
    width: 100%;
    padding: 8px 10px;
    border-radius: 8px;
  }

  .select-item button:hover {
    --eerie-black-2: hsl(240, 2%, 20%);
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
