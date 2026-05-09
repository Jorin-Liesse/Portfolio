<script lang="ts">
  let { title, text } = $props();
</script>

<li class="service-item">
  <div class="service-icon-box">
    <svg><use href=icons/dev.svg></use></svg>
  </div>

  <div class="service-content-box">
    <h4 class="h4 service-item-title">{title}</h4>
    <p class="service-item-text">{text}</p>
  </div>
</li>

<style>
  .service-icon-box svg {
    width: 40px;
    height: 40px;
  }
</style>
