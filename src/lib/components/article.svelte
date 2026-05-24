<script lang="ts">
  import type { Snippet } from 'svelte';
  let { title, children }: { title: string; children?: Snippet } = $props();
</script>

<div class="article-content">
  <h2 class="h2 article-title">{title}</h2>
  {@render children?.()}
</div>

<style>
  .article-content {
    display: block;
    animation: fade 0.5s ease backwards;
  }

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

  @media (min-width: 580px) {
    .article-title {
      font-weight: var(--fw-600);
      padding-bottom: 15px;
    }

    .article-title::after {
      width: 40px;
      height: 5px;
    }
  }

  @keyframes fade {
    0% {
      opacity: 0;
    }
    100% {
      opacity: 1;
    }
  }
</style>
