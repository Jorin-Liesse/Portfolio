<script>
  let { icon, alt, title } = $props();
</script>

<button class="form-btn" type="submit" data-form-btn>
  <img src={icon} {alt} />
  <span>{title}</span>
</button>
