<script lang="ts">
  import { asset } from '$app/paths';
  let { title, text }: { title: string; text: string } = $props();
</script>

<li class="service-item">
  <div class="service-icon-box">
    <svg><use href={asset('/icons/dev.svg')}></use></svg>
  </div>

  <div class="service-content-box">
    <h4 class="h4 service-title">{title}</h4>
    <p class="service-text">{text}</p>
  </div>
</li>

<style>
  .service-item {
    position: relative;
    background: var(--border-gradient-onyx);
    padding: 30px;
    border-radius: 14px;
    box-shadow: var(--shadow-2);
    z-index: 1;

    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
    gap: 18px;
  }

  .service-item::before {
    content: '';
    position: absolute;
    inset: 1px;
    background: var(--bg-gradient-jet);
    border-radius: inherit;
    z-index: -1;
  }

  .service-icon-box svg {
    --primary-color: var(--orange-yellow);
    width: 2.5rem;
    height: 2.5rem;
  }

  .service-icon-box {
    margin-bottom: 10px;
  }

  .service-content-box {
    text-align: left;
  }

  .service-title {
    margin-bottom: 0;
    margin-top: 5px;
    margin-bottom: 7px;
  }

  .service-text {
    color: var(--light-gray);
    font-size: var(--fs-6);
    font-weight: var(--fw-3);
    line-height: 1.6;
  }

  @media (min-width: 580px) {
    .service-icon-box {
      margin-bottom: 0;
      margin-top: 5px;
    }

    .service-content-box {
      text-align: left;
    }
  }
</style>
