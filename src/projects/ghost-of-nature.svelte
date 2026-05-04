<script>
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-ghost-of-nature project-page">
  <video class="project-presenter" autoplay muted loop playsinline>
    <source src="video-AV1/presenter-ghost-of-nature.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
    <source src="video-fallback/presenter-ghost-of-nature.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
  </video>

  <div class="project-spacer"></div>

  <div class="skills-grid">
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
    <div class="project-block text-box">
      <p class="service-item-text centered">It’s quiet in the apartment… until someone notices your presence.</p>
      <p class="service-item-text">‎</p>
      <p class="service-item-text centered">
        Ghost of Nature was created for the DAE Game Jam in just three days. It’s a stealth game where players take the role of a ghost, planting
        plants in an apartment without getting caught. Our team consisted of three developers, and I served as Programmer, building the gameplay
        systems and ensuring smooth, responsive interactions.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
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
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://jorinliesse.itch.io/ghost-of-nature" class="link" target="_blank">
      <Button icon="icons/itch.svg" alt="Itch Icon" title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Ghost-Of-Nature" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
  </div>
</div>
