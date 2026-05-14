<script lang="ts">
  import { base } from '$app/paths';
  import type { Snippet } from 'svelte';
  import '../app.css';

  let { children }: { children?: Snippet } = $props();
</script>

<svelte:head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Portfolio of Jorin Liesse, Game Developer." />
	<meta name="text-scale" content="scale" />
	
	<link rel="icon" type="image/svg+xml" href={`${base}/favicon.svg`} />

	<title>Portfolio, Jorin Liesse</title>

	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet"/>
</svelte:head>

{@render children?.()}
