<script>
  let { icon, alt, title } = $props();
</script>

<div class="skill-card" data-skill-card>
  <img src={icon} {alt} />
  <h3 class="h3">{title}</h3>
</div>
