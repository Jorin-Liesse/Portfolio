<script lang="ts">
  import IconBox from '$lib/components/icon-box.svelte';

  let { src, title, value, link }: { src: string; title: string; value: string; link: string } = $props();
</script>

<a class="contact-item" href={link} target="_blank" rel="noopener noreferrer">
  <IconBox {src} />

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

  @media (min-width: 580px) {
    .contact-info {
      max-width: calc(100% - 64px);
      width: calc(100% - 64px);
    }
  }
</style>
