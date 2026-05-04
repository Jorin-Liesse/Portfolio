<script>
  // import Button from "../components/button.svelte";
</script>

<article class="resume" data-page="resume">
  <h2 class="h2 article-title">Resume</h2>

  <section class="timeline">
    <div class="title-wrapper">
      <div class="icon-box">
        <ion-icon name="book-outline"></ion-icon>
      </div>

      <h3 class="h3">Education</h3>
    </div>

    <ol class="timeline-list">
      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Digital Arts & Entertainment</h4>
        <span>September 2023 - June 2026, Kortrijk Belgium</span>
        <p class="timeline-text">Independent Game Production (Bachelor's Degree)</p>
      </li>

      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Van Veldeke</h4>
        <span>September 2017 - June 2023, Hasselt Belgium</span>
        <p class="timeline-text">Math & Sciences (High School Degree)</p>
      </li>

      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Het Vlaamse Kruis</h4>
        <span>November 2021 - February 2022, Hasselt Belgium</span>
        <p class="timeline-text">First Aid (Certificate)</p>
      </li>
    </ol>
  </section>

  <br /><br />

  <section class="timeline">
    <div class="title-wrapper">
      <div class="icon-box">
        <ion-icon name="book-outline"></ion-icon>
      </div>

      <h3 class="h3">Skills</h3>
    </div>

    <ol class="timeline-list">
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
    </ol>
  </section>

  <br /><br />

  <section class="timeline">
    <div class="title-wrapper">
      <div class="icon-box">
        <ion-icon name="book-outline"></ion-icon>
      </div>

      <h3 class="h3">Experience</h3>
    </div>

    <ol class="timeline-list">
      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Nationale-Loterij - Game Developer</h4>

        <span>February 2026 - June 2026, Brussel Belgium</span>

        <p class="timeline-text">• Developing gamified training modules</p>
        <p class="timeline-text">• Working in a small team with the agile workflow</p>
      </li>

      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Kuehne + Nagel / Logistiek Assistent</h4>
        <span>August 2022 - August 2022, Tessenderlo Belgium</span>

        <p class="timeline-text">• Sorting and organizing goods in the warehouse</p>
        <p class="timeline-text">• Assist in checking properly labeled goods in a warehouse</p>
      </li>
    </ol>
  </section>

  <br /><br />

  <section class="timeline">
    <div class="title-wrapper">
      <div class="icon-box">
        <ion-icon name="book-outline"></ion-icon>
      </div>

      <h3 class="h3">Achievements</h3>
    </div>

    <ol class="timeline-list">
      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Brackeys Game Jam 2025.2</h4>
        <a href="https://jorinliesse.itch.io/crumbs-pirate" target="_blank">Crumbs Pirate</a>
      </li>
      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">DAE Game Jam 2025.1</h4>
        <a href="https://jorinliesse.itch.io/zombrush" target="_blank">ZomBrush</a>
      </li>
      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">DAE Game Jam 2024.2</h4>
        <a href="https://jorinliesse.itch.io/ghost-of-nature" target="_blank">Ghost Of Nature</a>
      </li>
      <li class="timeline-item">
        <h4 class="h4 timeline-item-title">Brackeys Game Jam 2024.2</h4>
        <a href="https://jorinliesse.itch.io/crazy-coast" target="_blank">Crazy Coast</a>
      </li>
    </ol>
  </section>

  <a href="/documents/Resume.pdf" download rel="external">
    <!-- <Button icon="icons/download-outline.svg" alt="Download Icon" title="Download Resume" /> -->
    <button class="form-btn" type="button" data-form-btn>
      <ion-icon name="download-outline"></ion-icon>
      <span>Download</span>
    </button>
  </a>
</article>
