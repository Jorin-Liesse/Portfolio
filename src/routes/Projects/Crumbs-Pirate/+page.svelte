<script module lang="ts">
  import { asset } from '$app/paths';
  import ProjectPage from '$components/project-page.svelte';
  import SkillCard from '$components/skill-card.svelte';
  import Button from '$components/button.svelte';

  import type { ProjectMetadata } from '$types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'Crumbs-Pirate',
    title: 'Crumbs Pirate',
    category: 'Games',
    categories: ['Games'],
    avif: asset('/images-AV1/page-crumbs-pirate.avif'),
    fallback: asset('/images-fallback/page-crumbs-pirate.jpg')
  };
</script>

<ProjectPage title={projectMetadata.title}>
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source
        src={asset('/video-AV1/presenter-crumbs-pirate.webm')}
        type="video/webm; codecs=av01.0.05M.08,opus"
      />
      <source
        src={asset('/video-fallback/presenter-crumbs-pirate.mp4')}
        type="video/mp4; codecs=avc1.42E01E,mp4a.40.2"
      />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon={asset('/icons/unity-icon.svg')} alt="Unity icon" title="Unity" />
    <SkillCard icon={asset('/icons/cs-icon.svg')} alt="C# icon" title="C Sharp" />
    <SkillCard icon={asset('/icons/blender-icon.svg')} alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="box-frame-text centered">
        Crumbs Pirate was created for the Brackeys Game Jam 2025.2 in a team. It is an action-packed
        submarine game where players take on the role of a pirate stealing cookie cargo from
        merchant ships while avoiding the navy. I worked as Programmer, developing the submarine
        movement, diving mechanics, and combat systems to create a fun and responsive gameplay
        experience.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/crumbs-pirate/buildings.avif')} type="image/avif" />
        <img
          src={asset('/images-fallback/crumbs-pirate/buildings.jpg')}
          alt="Detail render"
          loading="lazy"
        />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/crumbs-pirate/ship.avif')} type="image/avif" />
        <img
          src={asset('/images-fallback/crumbs-pirate/ship.jpg')}
          alt="Detail render"
          loading="lazy"
        />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/crumbs-pirate/start.avif')} type="image/avif" />
        <img
          src={asset('/images-fallback/crumbs-pirate/start.jpg')}
          alt="Detail render"
          loading="lazy"
        />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/crumbs-pirate/credits.avif')} type="image/avif" />
        <img
          src={asset('/images-fallback/crumbs-pirate/credits.jpg')}
          alt="Detail render"
          loading="lazy"
        />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/crumbs-pirate/controls.avif')} type="image/avif" />
        <img
          src={asset('/images-fallback/crumbs-pirate/controls.jpg')}
          alt="Detail render"
          loading="lazy"
        />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset={asset('/images-AV1/crumbs-pirate/dead.avif')} type="image/avif" />
        <img
          src={asset('/images-fallback/crumbs-pirate/dead.jpg')}
          alt="Detail render"
          loading="lazy"
        />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://jorinliesse.itch.io/crumbs-pirate" class="link" target="_blank">
      <Button src={asset('/icons/itch.svg')} title="Itch" />
    </a>
  {/snippet}
</ProjectPage>
