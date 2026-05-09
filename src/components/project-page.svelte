<script lang="ts">
  import type { Snippet } from 'svelte';

  let { id, presenter, skills, content, links }: { id: string; presenter?: Snippet; skills?: Snippet; content?: Snippet; links?: Snippet } = $props();
</script>

<div class="{id} project-page">
  {#if presenter}
    <section class="presenter project-presenter iframe-presenter-container">
      {@render presenter()}
    </section>

    <div class="project-spacer"></div>
  {/if}

  {#if skills}
    <section class="skills skills-grid">
      {@render skills()}
    </section>

    <div class="project-spacer"></div>
  {/if}

  {#if content}
    <section class="content project-content">
      {@render content()}
    </section>

    <div class="project-spacer"></div>
  {/if}

  {#if links}
    <section class="links links-grid">
      {@render links()}
    </section>
  {/if}
</div>
