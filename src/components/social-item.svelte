<script lang="ts">
  let { icon, title, link } = $props();
</script>

<li class="social-item">
  <a href={link} aria-label={title} class="social-link" target="_blank">
    <ion-icon name={icon}></ion-icon>
  </a>
</li>

<style>
  .social-item .social-link {
    color: var(--light-gray-70);
    font-size: 18px;
  }

  .social-item .social-link:hover {
    color: var(--light-gray);
  }
</style>
