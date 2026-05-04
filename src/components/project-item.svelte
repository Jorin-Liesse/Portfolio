<script>
  let { link, title, category, categories, avif, fallback } = $props();
</script>

<li class="project-item active" data-filter-item data-category={categories}>
  <button data-project-link={link}>
    <figure class="project-img">
      <div class="project-item-icon-box">
        <ion-icon name="eye-outline"></ion-icon>
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
