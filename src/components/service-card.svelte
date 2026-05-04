<script>
  let { title, text } = $props();
</script>

<li class="service-item">
  <div class="service-icon-box">
    <img src="icons/dev-icon.svg" alt="design icon" width="40" />
  </div>

  <div class="service-content-box">
    <h4 class="h4 service-item-title">{title}</h4>
    <p class="service-item-text">{text}</p>
  </div>
</li>
