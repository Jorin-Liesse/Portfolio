<script lang="ts">
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

<style>
  .contact-item {
    min-width: 100%;
    display: flex;
    align-items: center;
    gap: 16px;
  }

  .contact-info {
    max-width: calc(100% - 46px);
    width: calc(100% - 46px);
  }

  .contact-title {
    color: var(--light-gray-70);
    font-size: var(--fs-8);
    text-transform: uppercase;
    margin-bottom: 2px;
  }

  .contact-info .contact-value {
    color: var(--white-2);
    font-size: var(--fs-7);
  }
</style>
