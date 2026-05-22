<script lang="ts">
  import type { Snippet } from 'svelte';
  import Article from '$lib/components/article.svelte';

  let { title, presenter, skills, content, links }: { title: string; presenter?: Snippet; skills?: Snippet; content?: Snippet; links?: Snippet } = $props();
</script>

<Article {title}>
  <div class="project-page">
    {#if presenter}
      <section class="presenter">
        {@render presenter()}
      </section>
    {/if}

    {#if skills}
      <div class="project-spacer"></div>

      <section class="skills">
        {@render skills()}
      </section>
    {/if}

    {#if content}
      <div class="project-spacer"></div>

      <section class="content">
        {@render content()}
      </section>
    {/if}

    {#if links}
      <div class="project-spacer"></div>

      <section class="links">
        {@render links()}
      </section>
    {/if}
  </div>
</Article>

<style>
  .project-page :global(.select-item button) {
    background: var(--eerie-black-2);
    color: var(--light-gray);
    font-size: var(--fs-6);
    font-weight: var(--fw-300);
    text-transform: capitalize;
    width: 100%;
    padding: 8px 10px;
    border-radius: 8px;
  }

  .project-page :global(.select-item button:hover) {
    --eerie-black-2: hsl(240, 2%, 20%);
  }

  .project-page :global(.presenter) {
    width: 100%;
    height: calc(100% / (9 / 16));
    aspect-ratio: 16 / 9;
    border: none;
    object-fit: cover;
    border-radius: 16px;
  }

  .project-page :global(.presenter-content) {
    background: var(--onyx-75);
    border: 1px solid var(--jet);
    box-shadow: var(--shadow-1);
    width: 100%;
    height: 100%;
    aspect-ratio: 16 / 9;
    object-fit: cover;
    border-radius: 16px;
  }

  .project-page :global(.content) {
    display: flex;
    flex-wrap: wrap;
    gap: 16px;
  }

  .project-page :global(.project-block) {
    position: relative;
    flex: 1 1 100%;
    border-radius: 12px;
    overflow: hidden;
  }

  .project-page :global(.project-block.half) {
    flex: 1 1 calc(50% - 16px);
  }

  .project-page :global(.project-block img),
  .project-page :global(.project-block video) {
    display: block;
    width: 100%;
    height: auto;
    object-fit: cover;
  }

  .project-page :global(.project-block .on-top-text) {
    position: absolute;
    bottom: 12px;
    left: 12px;
    margin: 0;
    padding: 8px 12px;
    background: rgba(0, 0, 0, 0.5);
    color: white;
    border-radius: 8px;
    font-size: 1rem;
  }

  .project-page :global(.project-block.text-box) {
    position: relative;
    background: var(--border-gradient-onyx);
    padding: 20px;
    border-radius: 14px;
    box-shadow: var(--shadow-2);
    z-index: 1;
  }

  .project-page :global(.project-block.text-box::before) {
    content: '';
    position: absolute;
    inset: 1px;
    background: var(--bg-gradient-jet);
    border-radius: inherit;
    z-index: -1;
  }

  .project-page :global(.project-block.text-box p.centered) {
    text-align: center;
  }

  .project-page :global(.project-block.text-box p) {
    color: var(--white-2);
    font-size: 1rem;
    line-height: 1.5;
    margin: 0;
  }

  .project-page {
    position: relative;
  }

  .project-page * {
    animation: scaleUp 0.25s ease forwards;
  }

  .links {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    justify-content: center;
  }

  .project-spacer {
    padding-bottom: 16px;
  }

  .skills {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    justify-content: center;
  }

  @keyframes scaleUp {
    0% {
      transform: scale(0.5);
    }
    100% {
      transform: scale(1);
    }
  }

  @media (max-width: 768px) {
    .skills {
      display: flex;
      flex-wrap: wrap;
      gap: 0.75rem 1rem;
      justify-content: center;
    }
  }
</style>
