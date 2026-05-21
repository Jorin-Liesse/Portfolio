<script lang="ts">
  import IconBox from '$lib/components/icon-box.svelte';

  import { asset } from '$app/paths';
  import type { Snippet } from 'svelte';

  let { title, children }: { title: string; children?: Snippet } = $props();
</script>

<section class="timeline">
  <div class="title-wrapper">
    <IconBox src={asset('/icons/book.svg')} />
    <h3 class="h3">{title}</h3>
  </div>

  <ol class="timeline-list">
    {@render children?.()}
  </ol>
</section>

<style>
  .timeline {
    margin-bottom: 3rem;
  }

  .timeline .title-wrapper {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 25px;
  }

  .timeline-list {
    font-size: var(--fs-6);
    margin-left: 45px;
  }

  @media (min-width: 580px) {
    .timeline-list {
      margin-left: 65px;
    }
  }
</style>
