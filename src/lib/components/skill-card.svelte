<script lang="ts">
  let { icon, alt, title }: { icon: string; alt?: string; title: string } = $props();

  let active = $state(false);
  const toggleCard = () => (active = !active);
</script>

<button class="skill-card" class:active onclick={toggleCard}>
  <img src={icon} {alt} />
  <h3 class="h3">{title}</h3>
</button>
