<script lang="ts">
  let { icon, alt, title }: { icon: string; alt?: string; title: string } = $props();

  let active = $state(false);
  const toggleCard = () => (active = !active);
</script>

<button class="skill-card" class:active onclick={toggleCard}>
  <img src={icon} {alt} />
  <h3 class="h3">{title}</h3>
</button>

<style>
  .skill-card {
    position: relative;
    z-index: 1;
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    background: var(--border-gradient-onyx);
    border-radius: 0.75rem;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
    padding: 0.5rem 0.75rem;
    transition:
      transform 0.2s ease,
      box-shadow 0.2s ease;
    width: auto;
  }

  .skill-card::before {
    content: '';
    position: absolute;
    inset: 1px;
    background: var(--bg-gradient-jet);
    border-radius: inherit;
    z-index: -1;
  }

  .skill-card img {
    width: 28px;
    height: 28px;
  }

  .skill-card h3 {
    color: var(--light-gray);
    font-size: 1rem;
    font-weight: 600;
    margin: 0;
  }

  @media (max-width: 768px) {
    .skill-card h3 {
      display: none;
    }

    .skill-card.active h3 {
      display: block;
    }

    .skill-card {
      cursor: pointer;
      justify-content: center;
      padding: 0.5rem;
    }
  }
</style>
