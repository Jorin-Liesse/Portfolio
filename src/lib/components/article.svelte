<script lang="ts">
  import type { Snippet } from 'svelte';
  let { title, children }: { title: string; children?: Snippet } = $props();
</script>

<h2 class="h2 article-title">{title}</h2>

{@render children?.()}

<style>
  .article-title {
    position: relative;
    padding-bottom: 7px;
  }

  .article-title::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 30px;
    height: 3px;
    background: var(--text-gradient-yellow);
    border-radius: 3px;
  }

  .article-title {
    margin-bottom: 30px;
  }
</style>
