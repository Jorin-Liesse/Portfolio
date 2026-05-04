<script>
  let { icon, title, link } = $props();
</script>

<li class="social-item">
  <a href={link} aria-label={title} class="social-link" target="_blank">
    <ion-icon name={icon}></ion-icon>
  </a>
</li>
