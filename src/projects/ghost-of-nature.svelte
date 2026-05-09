<script lang="ts">
  import ProjectPage from '../components/project-page.svelte';

  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<ProjectPage id="project-ghost-of-nature">
  {#snippet presenter()}
    <video class="project-presenter" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-ghost-of-nature.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-ghost-of-nature.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
  {/snippet}

  {#snippet content()}
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/ghost-of-nature/start.avif" type="image/avif" />
        <img src="images-fallback/ghost-of-nature/start.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/ghost-of-nature/end.avif" type="image/avif" />
        <img src="images-fallback/ghost-of-nature/end.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/ghost-of-nature/enemie.avif" type="image/avif" />
        <img src="images-fallback/ghost-of-nature/enemie.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
    <div class="project-block half">
      <picture>
        <source srcset="images-AV1/ghost-of-nature/hide.avif" type="image/avif" />
        <img src="images-fallback/ghost-of-nature/hide.jpg" alt="Detail render" loading="lazy" />
      </picture>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://jorinliesse.itch.io/ghost-of-nature" class="link" target="_blank">
      <Button icon="icons/itch.svg" alt="Itch Icon" title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Ghost-Of-Nature" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
  {/snippet}
</ProjectPage>
