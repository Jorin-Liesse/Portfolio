<script lang="ts">
  let { src, title}: { src: string; title: string } = $props();
</script>

<button class="form-btn" type="submit" data-form-btn>
  <svg><use href={src}></use></svg>
  <span>{title}</span>
</button>

<style>
  svg {
    --primary-color: var(--orange-yellow);
    width: 1.5rem;
    height: 1.5rem;
  }

  span {
    color: var(--orange-yellow);
  }
</style>
