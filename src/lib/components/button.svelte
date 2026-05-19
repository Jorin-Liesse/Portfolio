<script lang="ts">
  let { src, title }: { src: string; title: string } = $props();
</script>

<button class="form-btn" type="submit" data-form-btn>
  <svg><use href={src}></use></svg>
  <span>{title}</span>
</button>

<style>
  svg {
    --primary-color: var(--orange-yellow);
    width: 1.5rem;
    height: 1.5rem;
  }

  span {
    color: var(--orange-yellow);
  }

  .form-btn {
    position: relative;
    width: 100%;
    background: var(--border-gradient-onyx);
    color: var(--orange-yellow);
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px;
    padding: 13px 20px;
    border-radius: 14px;
    font-size: var(--fs-6);
    text-transform: capitalize;
    box-shadow: var(--shadow-3);
    z-index: 1;
    transition: var(--transition-1);
  }

  .form-btn::before {
    content: '';
    position: absolute;
    inset: 1px;
    background: var(--bg-gradient-jet);
    border-radius: inherit;
    z-index: -1;
    transition: var(--transition-1);
  }

  .form-btn:hover {
    background: var(--bg-gradient-yellow-1);
  }

  .form-btn:hover::before {
    background: var(--bg-gradient-yellow-2);
  }

  .form-btn:disabled {
    opacity: 0.7;
    cursor: not-allowed;
  }

  .form-btn:disabled:hover {
    background: var(--border-gradient-onyx);
  }

  .form-btn:disabled:hover::before {
    background: var(--bg-gradient-jet);
  }

  @media (min-width: 580px) {
    .form-btn {
      --fs-6: 16px;
      padding: 16px 20px;
    }
  }

  @media (min-width: 768px) {
    .form-btn {
      width: max-content;
      margin-left: auto;
    }
  }
</style>
