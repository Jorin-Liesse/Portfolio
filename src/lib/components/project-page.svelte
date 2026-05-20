<script lang="ts">
  import type { Snippet } from 'svelte';
  import Article from '$lib/components/article.svelte';

  let { title, presenter, skills, content, links }: { title: string; presenter?: Snippet; skills?: Snippet; content?: Snippet; links?: Snippet } = $props();
</script>

<Article title={title}>
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
