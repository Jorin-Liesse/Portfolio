<script lang="ts">
  import type { Snippet } from 'svelte';

  let { id, presenter, skills, content, links }: { id: string; presenter?: Snippet; skills?: Snippet; content?: Snippet; links?: Snippet } = $props();
</script>

<div class="{id} project-page">
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

<style>
  .project-page {
    position: relative;
    /* display: none; */
  }

  .project-page.active {
    /* display: block; */
    animation: fade 0.5s ease backwards;
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
