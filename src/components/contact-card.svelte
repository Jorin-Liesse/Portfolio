<script>
  let { icon, title, value, link } = $props();
</script>

<a class="contact-item" href={link} target="_blank">
  <div class="icon-box">
    <ion-icon name={icon} alt={title}></ion-icon>
  </div>

  <div class="contact-info">
    <p class="contact-title">{title}</p>
    <p class="contact-value">{value}</p>
  </div>
</a>
