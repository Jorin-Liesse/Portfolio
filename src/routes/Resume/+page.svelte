<script lang="ts">
  import { asset } from '$app/paths';
  import Button from '$lib/components/button.svelte';
  import Article from '$lib/components/article.svelte';
  import Timeline from '$lib/components/timeline.svelte';
</script>

<Article title="Resume">
  <Timeline title="Education">
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Digital Arts & Entertainment</h4>
      <span class="timeline-span">September 2023 - June 2026, Kortrijk Belgium</span>
      <p class="timeline-text">Independent Game Production (Bachelor's Degree)</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Van Veldeke</h4>
      <span class="timeline-span">September 2017 - June 2023, Hasselt Belgium</span>
      <p class="timeline-text">Math & Sciences (High School Degree)</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Het Vlaamse Kruis</h4>
      <span class="timeline-span">November 2021 - February 2022, Hasselt Belgium</span>
      <p class="timeline-text">First Aid (Certificate)</p>
    </li>
  </Timeline>

  <Timeline title="Skills">
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">3D Modeling</h4>
      <p class="timeline-text">Blender, Maya</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Texturing</h4>
      <p class="timeline-text">Photoshop, Substance Painter</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">UI/UX Design</h4>
      <p class="timeline-text">Affinity Designer, Affinity Photo</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Game Engine</h4>
      <p class="timeline-text">Unity</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Programming</h4>
      <p class="timeline-text">C#, C++, Python, HTML, CSS, Javascript</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Game Design</h4>
      <p class="timeline-text">Unity, Pen & Paper, Miro</p>
    </li>
  </Timeline>

  <Timeline title="Experience">
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Nationale-Loterij - Game Developer</h4>
      <span class="timeline-span">February 2026 - June 2026, Brussel Belgium</span>
      <p class="timeline-text">• Developing gamified training modules</p>
      <p class="timeline-text">• Working in a small team with the agile workflow</p>
    </li>

    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Kuehne + Nagel / Logistiek Assistent</h4>
      <span class="timeline-span">August 2022 - August 2022, Tessenderlo Belgium</span>
      <p class="timeline-text">• Sorting and organizing goods in the warehouse</p>
      <p class="timeline-text">• Assist in checking properly labeled goods in a warehouse</p>
    </li>
  </Timeline>

  <Timeline title="Achievements">
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Brackeys Game Jam 2025.2</h4>
      <a class="timeline-link" href="https://jorinliesse.itch.io/crumbs-pirate" target="_blank">Crumbs Pirate</a>
    </li>
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">DAE Game Jam 2025.1</h4>
      <a class="timeline-link" href="https://jorinliesse.itch.io/zombrush" target="_blank">ZomBrush</a>
    </li>
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">DAE Game Jam 2024.2</h4>
      <a class="timeline-link" href="https://jorinliesse.itch.io/ghost-of-nature" target="_blank">Ghost Of Nature</a>
    </li>
    <li class="timeline-item">
      <h4 class="h4 timeline-item-title">Brackeys Game Jam 2024.2</h4>
      <a class="timeline-link" href="https://jorinliesse.itch.io/crazy-coast" target="_blank">Crazy Coast</a>
    </li>
  </Timeline>

  <a href={asset(`/documents/Resume.pdf`)} download rel="external">
    <Button src="icons/download.svg" title="Download" />
  </a>
</Article>

<style>
  .timeline-item {
    position: relative;
  }

  .timeline-item:not(:last-child) {
    margin-bottom: 20px;
  }

  .timeline-item-title {
    font-size: var(--fs-6);
    line-height: 1.3;
    margin-bottom: 7px;
  }

  .timeline-span {
    text-decoration: underline;
    color: var(--vegas-gold);
    font-weight: var(--fw-400);
    line-height: 1.6;
  }

  .timeline-link {
    text-decoration: underline;
    color: var(--vegas-gold);
    font-weight: var(--fw-400);
    line-height: 1.6;
  }

  .timeline-item:not(:last-child)::before {
    content: '';
    position: absolute;
    top: -25px;
    left: -30px;
    width: 1px;
    height: calc(100% + 50px);
    background: var(--jet);
  }

  .timeline-item::after {
    content: '';
    position: absolute;
    top: 5px;
    left: -33px;
    height: 6px;
    width: 6px;
    background: var(--text-gradient-yellow);
    border-radius: 50%;
    box-shadow: 0 0 0 4px var(--jet);
  }

  .timeline-text {
    color: var(--light-gray);
    font-weight: var(--fw-300);
    line-height: 1.6;
  }

  @media (min-width: 580px) {
    .timeline-item:not(:last-child)::before {
      left: -40px;
    }

    .timeline-item::after {
      height: 8px;
      width: 8px;
      left: -43px;
    }
  }

  @media (min-width: 1250px) {
    .timeline-text {
      max-width: 700px;
    }
  }
</style>
