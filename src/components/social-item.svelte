<script lang="ts">
  let { src, title, link } = $props();
</script>

<li class="social-item">
  <a href={link} aria-label={title} class="social-link" target="_blank">
    <svg><use href={src}></use></svg>
  </a>
</li>

<style>
  .social-item .social-link svg {
    --primary-color: var(--light-gray-70);
    width: 1rem;
    height: 1rem;
  }

  .social-item .social-link svg:hover {
    --primary-color: var(--light-gray);
  }
</style>
