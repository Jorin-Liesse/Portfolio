<script module lang="ts">
  import ProjectPage from '$lib/components/project-page.svelte';
  import SkillCard from '$lib/components/skill-card.svelte';
  import Button from '$lib/components/button.svelte';

  import type { ProjectMetadata } from '$lib/types/project-meta-data';

  export const projectMetadata: ProjectMetadata = {
    link: 'project-light-bridger',
    title: 'Light Bridger',
    category: 'Games',
    categories: ['Games', 'Best'],
    avif: 'images-AV1/page-light-bridger.avif',
    fallback: 'images-fallback/page-light-bridger.jpg'
  };
</script>

<ProjectPage id="project-light-bridger">
  {#snippet presenter()}
    <video class="presenter-content" autoplay muted loop playsinline>
      <source src="video-AV1/presenter-light-bridger.webm" type="video/webm; codecs=av01.0.05M.08,opus" />
      <source src="video-fallback/presenter-light-bridger.mp4" type="video/mp4; codecs=avc1.42E01E,mp4a.40.2" />
    </video>
  {/snippet}

  {#snippet skills()}
    <SkillCard icon="icons/unity-icon.svg" alt="Unity icon" title="Unity" />
    <SkillCard icon="icons/cs-icon.svg" alt="C# icon" title="C Sharp" />
    <SkillCard icon="icons/blender-icon.svg" alt="Blender icon" title="Blender" />
    <SkillCard icon="icons/miro-icon.svg" alt="Miro icon" title="Miro" />
  {/snippet}

  {#snippet content()}
    <div class="project-block text-box">
      <p class="service-item-text centered">
        For Light Bridger, I started from the idea of using light as a physical tool. This evolved into a puzzle platformer where players build bridges and paths out of laser beams. I explored how
        light could interact with the environment through mirrors and reflections to create clever, skill-based puzzles. Through this project, I learned to design mechanics that encourage creative
        problem-solving while maintaining a clear and consistent vision.
      </p>
    </div>
    <div class="project-block half text-box">
      <p class="service-item-text">• State</p>
      <p class="service-item-text">• Singleton</p>
      <p class="service-item-text">• Observer</p>
      <p class="service-item-text">• Composite</p>
      <p class="service-item-text">‎</p>
      <p class="service-item-text">‎</p>
      <p class="h5 on-top-text">Design Patterns</p>
    </div>
    <div class="project-block half text-box">
      <p class="service-item-text">• Code written from scratch</p>
      <p class="service-item-text">• Game design by me</p>
      <p class="service-item-text">• Some 3D assets packs used</p>
      <p class="service-item-text">• Started with prototyping</p>
      <p class="service-item-text">‎</p>
      <p class="service-item-text">‎</p>
      <p class="h5 on-top-text">Project Highlights</p>
    </div>
  {/snippet}

  {#snippet links()}
    <a href="https://jorinliesse.itch.io/light-bridger" class="link" target="_blank">
      <Button src="icons/itch.svg" title="Itch" />
    </a>
    <a href="https://github.com/Jorin-Liesse/Light-Bridger" class="link" target="_blank">
      <Button src="icons/github.svg" title="Github" />
    </a>
    <a href="https://miro.com/app/board/uXjVIf3QwEk=/?share_link_id=857605827096" class="link" target="_blank">
      <Button src="icons/miro.svg" title="Miro" />
    </a>
  {/snippet}
</ProjectPage>
