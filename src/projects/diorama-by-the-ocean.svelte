<script module lang="ts">
  import ProjectPage from '../components/project-page.svelte';
  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-diorama-by-the-ocean',
    title: 'Diorama - By the ocean',
    category: 'Models',
    categories: ['Models'],
    avif: 'images-AV1/page-diorama-by-the-ocean.avif',
    fallback: 'images-fallback/page-diorama-by-the-ocean.jpg'
  };
</script>

<ProjectPage id="project-diorama-by-the-ocean">
  {#snippet presenter()}
    <iframe
      class="presenter-content"
      title="DAE Diorama - By the ocean"
      frameborder="0"
      allow="autoplay; fullscreen; xr-spatial-tracking"
      loading="lazy"
      src="https://sketchfab.com/models/b0e9a08a3b894b7d82541a81806481ac/embed?autostart=1&camera=0&annotations_visible=0&preload=1&transparent=1&ui_hint=2"
    ></iframe>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        This 3D artwork captures the vibrant essence of a Philippines island. Bold architecture and striking colors come alive under the warm sun, reflecting across the serene ocean waters. Set on a
        sandy beach surrounded by swaying palms and lush greenery, the scene evokes the rhythmic crash of waves and the refreshing sea breeze. The piece is both an homage to the Philippines’ relaxed,
        tropical vibe and a tribute to the beauty of nature.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/diorama-by-the-ocean/boat.avif" type="image/avif" />
        <img src="images-fallback/diorama-by-the-ocean/boat.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/diorama-by-the-ocean/house.avif" type="image/avif" />
        <img src="images-fallback/diorama-by-the-ocean/house.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://skfb.ly/oPyCE" class="link" target="_blank">
      <Button src="icons/sketchfab.svg" title="Sketchfab" />
    </a>
  {/snippet}
</ProjectPage>
