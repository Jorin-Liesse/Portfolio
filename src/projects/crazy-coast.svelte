<script>
  import SkillCard from '../components/skill-card.svelte';
  import Button from '../components/button.svelte';
</script>

<div class="project-crazy-coast project-page">
  <video class="project-presenter" autoplay muted loop playsinline>
    <source src="video-AV1/presenter-crazy-coast.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
    <source src="video-fallback/presenter-crazy-coast.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
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
      <p class="service-item-text centered">It’s calm on the island of Crazy Coast… until the storm hits.</p>
      <p class="service-item-text">‎</p>
      <p class="service-item-text centered">
        Crazy Coast was created for the Brackeys Game Jam in just one week. It’s a survival game where players must escape the islands by completing
        tasks while avoiding natural disasters. Our team consisted of seven developers, and I served as Lead Programmer, Project Manager, and
        Animator, guiding the project while contributing to gameplay systems and visual elements.
      </p>
    </div>
  </div>

  <div class="project-spacer"></div>

  <div class="project-content">
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
  </div>

  <div class="project-spacer"></div>
  <div class="project-spacer"></div>

  <div class="links-grid">
    <a href="https://jorinliesse.itch.io/crazy-coast" class="link" target="_blank">
      <Button icon="icons/itch.svg" alt="Itch Icon" title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Crazy-Coast/tree/Prototype" class="link" target="_blank">
      <Button icon="icons/github.svg" alt="Github Icon" title="Github" />
    </a>
  </div>
</div>
