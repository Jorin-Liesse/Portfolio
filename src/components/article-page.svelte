<script lang="ts">
  import type { Snippet } from 'svelte';
  let { title, id, children, active }: { title: string; id: string; children?: Snippet; active?: boolean } = $props();
</script>

<article class={id} class:active data-page={id}>
  <h2 class="h2 article-title">{title}</h2>
  {@render children?.()}
</article>

<style></style>
