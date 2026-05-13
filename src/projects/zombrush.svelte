<script module lang="ts">
  import ProjectPage from '../components/project-page.svelte';
  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-zombrush',
    title: 'Zombrush',
    category: 'Games',
    categories: ['Games'],
    avif: 'images-AV1/page-zombrush.avif',
    fallback: 'images-fallback/page-zombrush.jpg'
  };
</script>

<ProjectPage id="project-zombrush">
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-zombrush.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-zombrush.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">The city is overrun… and it’s a mess.</p>
      <p class="service-item-text">‎</p>
      <p class="service-item-text centered">
        Zombrush was created for the Unwrap Game Jam in just three days. It’s an action-packed co-op game where zombies have taken over the city, and your team must repaint the town to restore
        order—quickly and creatively! Our team consisted of four developers, and I served as Programmer, building the gameplay systems that make spreading paint and battling zombies fun and
        responsive. The game is designed for two players with controllers, emphasizing teamwork and fast-paced action.
      </p>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/zombrush/game.avif" type="image/avif" />
        <img src="images-fallback/zombrush/game.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/zombrush/deading.avif" type="image/avif" />
        <img src="images-fallback/zombrush/deading.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/zombrush/start.avif" type="image/avif" />
        <img src="images-fallback/zombrush/start.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/zombrush/end.avif" type="image/avif" />
        <img src="images-fallback/zombrush/end.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://jorinliesse.itch.io/zombrush" class="link" target="_blank">
      <Button src="icons/itch.svg" title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/GameJamUnwrap" class="link" target="_blank">
      <Button src="icons/github.svg" title="Github" />
    </a>
  {/snippet}
</ProjectPage>
