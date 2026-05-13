<script lang="ts">
  let { link, title, category, categories, avif, fallback, onclick } = $props();
</script>

<li class="project-item active" data-filter-item data-category={categories}>
  <button data-project-link={link} onclick={() => onclick(link)}>
    <figure class="project-img">
      <div class="project-item-icon-box">
        <svg><use href="icons/eye.svg"></use></svg>
      </div>

      <picture>
        <source srcset={avif} type="image/avif" />
        <img src={fallback} alt={title} loading="lazy" />
      </picture>
    </figure>

    <h3 class="project-title">{title}</h3>
    <p class="project-category">{category}</p>
  </button>
</li>

<style>
  .project-item {
    display: none;
  }

  .project-item.active {
    display: block;
    animation: scaleUp 0.25s ease forwards;
  }

  .project-item > button {
    width: 100%;
  }

  .project-item > button:hover .project-img::before {
    background: hsla(0, 0%, 0%, 0.5);
  }

  .project-item-icon-box {
    --scale: 0.8;
    background: var(--jet);

    display: flex;
    align-items: center;
    justify-content: center;

    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(var(--scale));
    padding: 0.75rem;
    border-radius: 12px;
    opacity: 0;
    z-index: 1;
    transition: var(--transition-1);
  }

  .project-item > button:hover .project-item-icon-box {
    --scale: 1;
    opacity: 1;
  }

  .project-item-icon-box svg {
    --primary-color: var(--orange-yellow);
    width: 1.5rem;
    height: 1.5rem;
  }

  .project-item > button:hover img {
    transform: scale(1.1);
  }

  .project-title {
    color: var(--white-2);
    font-size: var(--fs-5);
    font-weight: var(--fw-400);
    text-transform: capitalize;
    line-height: 1.3;
    margin-left: 10px;
  }

  .project-category {
    color: var(--light-gray-70);
    font-size: var(--fs-6);
    font-weight: var(--fw-300);
    margin-left: 10px;
  }

  @keyframes scaleUp {
    0% {
      transform: scale(0.5);
    }
    100% {
      transform: scale(1);
    }
  }
</style>
