<script lang="ts">
  import SkillCard from '$lib/components/skill-card.svelte';
  import ServiceCard from '$lib/components/service-card.svelte';
</script>

<h2 class="h2 article-title">About me</h2>

<section class="about-text">
  <p>I’m an indie game developer and designer focused on creating engaging player experiences. I work across all aspects of game development: programming, design, and art.</p>

  <p>
    This gives me the flexibility to shape both the technical and visual sides of a project. I enjoy experimenting with small game projects, joining game jams, and tackling technical challenges to
    deliver fun and polished results.
  </p>
</section>

<section class="skills">
  <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
  <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
  <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
  <SkillCard icon="icons/photoshop-icon.svg" alt="Photoshop icon" title="Photoshop" />
  <SkillCard icon="icons/substance-painter-icon.svg" alt="Substance Painter icon" title="Substance Painter" />
  <SkillCard icon="icons/affinity-icon.svg" alt="Affinity icon" title="Affinity" />
  <SkillCard icon="icons/html-icon.svg" alt="HTML icon" title="HTML" />
  <SkillCard icon="icons/css-icon.svg" alt="CSS icon" title="CSS" />
  <SkillCard icon="icons/javascript-icon.svg" alt="JavaScript icon" title="JavaScript" />
  <SkillCard icon="icons/python-icon.svg" alt="Python icon" title="Python" />
  <SkillCard icon="icons/miro-icon.svg" alt="Miro icon" title="Miro" />
  <SkillCard icon="icons/github-icon.svg" alt="Github icon" title="Github" />
</section>

<section class="service">
  <h3 class="h3 service-title">What i'm doing</h3>

  <ul class="service-list">
    <ServiceCard title="Small Games" text="Creating small but polished games to experiment with mechanics, explore new ideas, and deliver fun, focused player experiences." />
    <ServiceCard title="Development Tooling" text="Building tools and systems to streamline game development workflows, including reusable code frameworks, and visual assets." />
    <ServiceCard title="Learning" text="I’m continually expanding my skills, trying on new game programming techniques, and design principles to stay at the forefront of the industry." />
    <ServiceCard title="Game Jam" text="Participating in game jams to rapidly prototype new ideas, test gameplay concepts, all while enjoying the fast-paced nature of game development." />
  </ul>
</section>

<style>
  .about-text {
    color: var(--light-gray);
    font-size: var(--fs-6);
    font-weight: var(--fw-300);
    line-height: 1.6;
  }

  .about-text p {
    margin-bottom: 15px;
  }

  .service-title {
    margin-bottom: 20px;
  }

  .service-list {
    display: grid;
    grid-template-columns: 1fr;
    gap: 20px;
  }

  @media (min-width: 1024px) {
    .service-list {
      grid-template-columns: 1fr 1fr;
      gap: 20px 25px;
    }
  }
</style>
