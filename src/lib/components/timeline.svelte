<script lang="ts">
  import { asset } from '$app/paths';
  import type { Snippet } from 'svelte';

  let { title, children }: { title: string; children?: Snippet } = $props();
</script>

<section class="timeline">
  <div class="title-wrapper">
    <div class="icon-box">
      <svg><use href={asset('/icons/book.svg')}></use></svg>
    </div>

    <h3 class="h3">{title}</h3>
  </div>

  <ol class="timeline-list">
    {@render children?.()}
  </ol>
</section>

<style>
  .icon-box svg {
    --primary-color: var(--orange-yellow);
    width: 1.5rem;
    height: 1.5rem;
  }

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
