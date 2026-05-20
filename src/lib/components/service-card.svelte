<script lang="ts">
  import { asset } from '$app/paths';
  let { title, text }: { title: string; text: string } = $props();
</script>

<li class="service-item">
  <div class="service-icon-box">
    <svg><use href={asset('/icons/dev.svg')}></use></svg>
  </div>

  <div class="service-content-box">
    <h4 class="h4 service-item-title">{title}</h4>
    <p class="service-item-text">{text}</p>
  </div>
</li>

<style>
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

  .service-item-title {
    margin-bottom: 0;
    margin-top: 5px;
    margin-bottom: 7px;
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
