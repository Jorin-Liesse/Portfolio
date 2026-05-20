<script module lang="ts">
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-super-mario-3D-world',
    title: 'Mario 3D World Clone',
    category: 'Games',
    categories: ['Games'],
    avif: 'images-AV1/page-super-mario-3D-world.avif',
    fallback: 'images-fallback/page-super-mario-3D-world.jpg'
  };
</script>

<ProjectPage id="project-super-mario-3D-world">
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-super-mario-3D-world.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-super-mario-3D-world.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        Welcome to Unity World Adventure, an exciting platformer game created as part of the Platform Development 2 course in Howest’s DAE program. This project is a faithful recreation of the first
        level of the beloved Mario 3D World, showcasing my ability to replicate classic level design and mechanics while building gameplay systems from scratch.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/mario-3d-world/start.avif" type="image/avif" />
        <img src="images-fallback/mario-3d-world/start.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/mario-3d-world/enemie.avif" type="image/avif" />
        <img src="images-fallback/mario-3d-world/enemie.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/mario-3d-world/tube1.avif" type="image/avif" />
        <img src="images-fallback/mario-3d-world/tube1.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/mario-3d-world/tube2.avif" type="image/avif" />
        <img src="images-fallback/mario-3d-world/tube2.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://github.com/Jorin-Liesse/Mario-3D-World" class="link" target="_blank">
      <Button src="icons/github.svg" title="Github" />
    </a>
    <a href="https://play.unity.com/en/games/4e26bc3b-4571-4c90-9bae-22f50d977581/mario-3d-world" class="link" target="_blank">
      <Button src="icons/website.svg" title="Website" />
    </a>
  {/snippet}
</ProjectPage>
