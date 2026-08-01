<script lang="ts">
  import { asset } from '$app/paths';
  let { title, text }: { title: string; text: string } = $props();
</script>

<li class="service-item">
  <div class="service-icon-box">
    <svg><use href={asset('/icons/dev.svg')}></use></svg>
  </div>

  <div class="service-content-box">
    <div class="service-header">
      <div class="service-icon-mobile">
        <svg><use href={asset('/icons/dev.svg')}></use></svg>
      </div>

      <h4 class="h4 service-title">{title}</h4>
    </div>

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
  .service-icon-mobile svg {
    --primary-color: var(--orange-yellow);
    width: 2rem;
    height: 2rem;
  }

  .service-icon-box {
    display: none;
  }

  .service-icon-mobile {
    display: flex;
    align-items: center;
    flex-shrink: 0;
  }

  .service-header {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 7px;
  }

  .service-title {
    margin: 0;
  }

  .service-text {
    color: var(--light-gray);
    font-size: var(--fs-6);
    font-weight: var(--fw-3);
    line-height: 1.6;
  }

  @media (min-width: 580px) {
    .service-item {
      display: flex;
      align-items: flex-start;
      gap: 18px;
    }

    .service-icon-box {
      display: block;
      margin-top: 5px;
    }

    .service-icon-mobile {
      display: none;
    }

    .service-header {
      display: block;
      margin-bottom: 0;
    }

    .service-title {
      margin-top: 5px;
      margin-bottom: 7px;
    }
  }
</style>
