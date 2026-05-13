<script module lang="ts">
  import ProjectPage from '../components/project-page.svelte';
  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-crazy-coast',
    title: 'Crazy Coast',
    category: 'Games',
    categories: ['Games'],
    avif: 'images-AV1/page-crazy-coast.avif',
    fallback: 'images-fallback/page-crazy-coast.jpg'
  };
</script>

<ProjectPage id="project-crazy-coast">
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-crazy-coast.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-crazy-coast.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">It’s calm on the island of Crazy Coast… until the storm hits.</p>
      <p class="service-item-text">‎</p>
      <p class="service-item-text centered">
        Crazy Coast was created for the Brackeys Game Jam in just one week. It’s a survival game where players must escape the islands by completing tasks while avoiding natural disasters. Our team
        consisted of seven developers, and I served as Lead Programmer, Project Manager, and Animator, guiding the project while contributing to gameplay systems and visual elements.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/crazy-coast/astroids.avif" type="image/avif" />
        <img src="images-fallback/crazy-coast/astroids.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/crazy-coast/bucket.avif" type="image/avif" />
        <img src="images-fallback/crazy-coast/bucket.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/crazy-coast/fishing.avif" type="image/avif" />
        <img src="images-fallback/crazy-coast/fishing.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/crazy-coast/tsunami.avif" type="image/avif" />
        <img src="images-fallback/crazy-coast/tsunami.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://jorinliesse.itch.io/crazy-coast" class="link" target="_blank">
      <Button src="icons/itch.svg" title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Crazy-Coast/tree/Prototype" class="link" target="_blank">
      <Button src="icons/github.svg" title="Github" />
    </a>
  {/snippet}
</ProjectPage>
