<script lang="ts">
  let { src }: { src: string } = $props();
</script>

<div class="icon-box">
  <svg><use href={src}></use></svg>
</div>

<style>
  .icon-box {
    position: relative;
    background: var(--border-gradient-onyx);
    width: 30px;
    height: 30px;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 16px;
    color: var(--orange-yellow);
    box-shadow: var(--shadow-1);
    z-index: 1;
  }

  .icon-box::before {
    content: '';
    position: absolute;
    inset: 1px;
    background: var(--eerie-black-1);
    border-radius: inherit;
    z-index: -1;
  }

  .icon-box svg {
    --primary-color: var(--orange-yellow);
    width: 1.5rem;
    height: 1.5rem;
  }

  @media (min-width: 580px) {
    .icon-box {
      width: 48px;
      height: 48px;
      border-radius: 12px;
      font-size: 18px;
    }
  }
</style>
