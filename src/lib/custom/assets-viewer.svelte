<script lang="ts">
  import { onMount } from 'svelte';
  import { page } from '$app/state';
  import ResizeHandle from '$lib/custom/resize-handle.svelte';

  const iconFiles = import.meta.glob(['$lib/ICON/*.svg', '$lib/SVG/*.svg'], { eager: true, import: 'default' });
  const iconUrls = Object.keys(iconFiles);

  const devMode = page.url.searchParams.get('dev') === 'true';

  let icons: HTMLElement[] = [];
  let selectedIcon: HTMLElement | null = null;
  let assetsOptions: HTMLElement;
  let assetsViewer: HTMLElement;
  let backdrop: HTMLElement;

  function preventScroll(event: Event) {
    const target = event.target as Node;
    if (!selectedIcon) return;
    if (assetsOptions?.contains(target) || target === assetsViewer) return;
    event.preventDefault();
  }

  function selectIcon(selected: HTMLElement) {
    selectedIcon = selected;
  }

  function navigate(direction: number) {
    if (!selectedIcon) return;

    const currentIndex = icons.indexOf(selectedIcon);
    if (currentIndex === -1) return;

    let nextIndex = currentIndex + direction;

    if (nextIndex >= icons.length) nextIndex = 0;
    if (nextIndex < 0) nextIndex = icons.length - 1;

    selectedIcon = icons[nextIndex];

    selectedIcon?.scrollIntoView({
      block: 'nearest',
      inline: 'nearest'
    });

    selectedIcon?.focus();
  }

  function handleClickOutside(event: MouseEvent) {
    const target = event.target as Node;
    if (assetsOptions?.contains(target) || assetsViewer?.contains(target)) return;
    event.stopPropagation();
    selectedIcon = null;
  }

  function handleKeydown(event: KeyboardEvent) {
    if (event.key === 'Escape') {
      selectedIcon = null;
    }

    if (event.key === 'ArrowRight' || event.key === 'ArrowDown') {
      event.preventDefault();
      navigate(1);
    }

    if (event.key === 'ArrowLeft' || event.key === 'ArrowUp') {
      event.preventDefault();
      navigate(-1);
    }
  }

  onMount(() => {
    if (!devMode) return;

    document.addEventListener('pointerdown', handleClickOutside);
    document.addEventListener('keydown', handleKeydown);
    document.addEventListener('wheel', preventScroll, { passive: false });
    document.addEventListener('touchmove', preventScroll, { passive: false });
  });
</script>

{#if devMode}
  <div id="assets-options" class="glass-panel" bind:this={assetsOptions}>
    {#each iconUrls as src, i (src)}
      <button bind:this={icons[i]} aria-label="icon" class:selected={selectedIcon === icons[i]} onclick={() => selectIcon(icons[i])} onfocus={() => selectIcon(icons[i])}>
        <svg><use href={src}></use></svg>
      </button>
    {/each}
  </div>

  {#if selectedIcon}
    <div class="backdrop" bind:this={backdrop}></div>

    <div id="assets-viewer" class="glass-panel" bind:this={assetsViewer}>
      <ResizeHandle direction="right" />
      <ResizeHandle direction="left" />
      <ResizeHandle direction="top" />
      <ResizeHandle direction="bottom" />

      <ResizeHandle direction="top-left" />
      <ResizeHandle direction="top-right" />
      <ResizeHandle direction="bottom-left" />
      <ResizeHandle direction="bottom-right" />

      <svg class="preview">
        <use href={iconUrls[icons.indexOf(selectedIcon)]} />
      </svg>
    </div>
  {/if}
{/if}

<style>
  :root {
    /* SPACING SYSTEM */
    --space-xs: 0.5rem;
    --space-sm: 0.75rem;
    --space-md: 1rem;
    --space-lg: 1.5rem;
    --space-xl: 2rem;

    /* LAYOUT */
    --panel-height: 90%;
    --panel-offset: 1.25rem;

    /* SIZING */
    --size-icon: 4rem;
    --size-preview: clamp(12rem, 30vw, 16rem);
    --size-scrollbar: 0.75rem;

    /* COLORS */
    --color-bg: rgba(20, 20, 30, 0.6);
    --color-border: rgba(255, 255, 255, 0.1);
    --color-hover: rgba(255, 255, 255, 0.1);
    --color-scrollbar: rgba(255, 255, 255, 0.25);

    /* ICON COLORS */
    --icon-inside-color: #e8e8e8;
    --icon-outline-color: #858585;
    --icon-highlight-color: #ffffff;
    --icon-shadow-color: #c3c3c3;

    --blur: 4px;
    --backdrop-darkness: rgba(0, 0, 0, 0.6);

    /* EFFECTS */
    --radius-sm: 0.75rem;
    --radius-md: 1rem;

    --blur-md: 0.75rem;

    --border-thin: 1px;

    --shadow-elevation: 0 0 30px rgba(0, 0, 0, 0.7), inset 0 0 10px rgba(255, 255, 255, 0.05);
  }

  .backdrop {
    position: fixed;
    inset: 0;
    z-index: 998;

    background: var(--backdrop-darkness);
    backdrop-filter: blur(var(--blur));
    -webkit-backdrop-filter: blur(var(--blur));
  }

  /* ASSETS OPTIONS */
  #assets-options {
    position: fixed;
    z-index: 999;

    left: var(--panel-offset);
    top: 50%;
    transform: translateY(-50%);

    height: var(--panel-height);
    width: fit-content;

    display: flex;
    flex-direction: column;
    align-items: center;

    gap: var(--space-sm);
    padding: var(--space-md);
    padding-left: calc(var(--space-md) - var(--size-scrollbar));
    padding-right: calc(var(--space-md) - var(--size-scrollbar));

    scrollbar-gutter: stable both-edges;
    scrollbar-width: var(--size-scrollbar);

    overflow-y: auto;
    overflow-x: hidden;
  }

  #assets-options svg {
    width: var(--size-icon);
    height: var(--size-icon);

    flex-shrink: 0;

    padding: var(--space-xs);
    border-radius: var(--radius-sm);

    cursor: pointer;
    transition: all 0.2s ease;
  }

  #assets-options button.selected svg,
  #assets-options svg:hover {
    background: var(--color-hover);
  }

  #assets-options svg:hover {
    transform: scale(1.05);
  }

  /* ASSETS PREVIEW */
  #assets-viewer {
    position: fixed;
    z-index: 999;

    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

    box-sizing: border-box;

    width: var(--size-preview);
    height: var(--size-preview);

    min-width: 10vw;
    min-height: 10vw;
    max-width: 70vw;
    max-height: 90vh;
  }

  #assets-viewer svg {
    width: 100%;
    height: 100%;
    object-fit: contain;

    padding: var(--space-md);
  }

  /* GLASS PANEL */
  .glass-panel {
    background: var(--color-bg);

    backdrop-filter: blur(var(--blur-md));
    -webkit-backdrop-filter: blur(var(--blur-md));

    border-radius: var(--radius-md);
    border: var(--border-thin) solid var(--color-border);

    box-shadow: var(--shadow-elevation);

    scrollbar-color: var(--color-scrollbar) transparent;
  }

  /* RESPONSIVE */
  @media (max-width: 48rem) {
    #assets-options {
      top: auto;
      bottom: var(--panel-offset);
      left: 50%;

      transform: translateX(-50%);

      width: 90vw;
      height: fit-content;

      flex-direction: row;

      justify-content: flex-start;

      padding: var(--space-md);

      scrollbar-width: var(--size-scrollbar);

      overflow-x: auto;
      overflow-y: hidden;
    }

    #assets-viewer {
      min-width: 10vw;
      min-height: 10vh;
      max-width: 90vw;
      max-height: 60vh;
    }
  }
</style>
