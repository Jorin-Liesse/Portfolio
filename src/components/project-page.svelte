<script lang="ts">
  import type { Snippet } from 'svelte';

  let { id, presenter, skills, content, links }: { id: string; presenter?: Snippet; skills?: Snippet; content?: Snippet; links?: Snippet } = $props();
</script>

<div class="{id} project-page">
  {#if presenter}
    <section class="presenter">
      {@render presenter()}
    </section>

    <div class="project-spacer"></div>
  {/if}

  {#if skills}
    <section class="skills">
      {@render skills()}
    </section>

    <div class="project-spacer"></div>
  {/if}

  {#if content}
    <section class="content">
      {@render content()}
    </section>

    <div class="project-spacer"></div>
  {/if}

  {#if links}
    <section class="links">
      {@render links()}
    </section>
  {/if}
</div>

<style>
  .project-page {
    position: relative;
    display: none;
  }

  .project-page.active {
    display: block;
    animation: fade 0.5s ease backwards;
  }

  .project-page * {
    animation: scaleUp 0.25s ease forwards;
  }

  @keyframes scaleUp {
    0% {
      transform: scale(0.5);
    }
    100% {
      transform: scale(1);
    }
  }
</style>
