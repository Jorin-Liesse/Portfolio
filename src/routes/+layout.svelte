<script lang="ts">
  import type { Snippet } from 'svelte';
  import '../app.css';

  let { children }: { children?: Snippet } = $props();
</script>

{@render children?.()}

<style>
  :root {
    --primary-color: #ffdb70;
    --secondary-color: #383838;
  }
</style>
