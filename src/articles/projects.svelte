<script>
  import ProjectItem from '../components/project-item.svelte';

  import LightBridger from '../projects/light-bridger.svelte';
  import CrazyCoast from '../projects/crazy-coast.svelte';
  import GhostOfNature from '../projects/ghost-of-nature.svelte';
  import Zombrush from '../projects/zombrush.svelte';
  import AngryBirds from '../projects/angry-birds.svelte';
  import FlappyBird from '../projects/flappy-bird.svelte';
  import SuperMario3DWorld from '../projects/super-mario-3D-world.svelte';
  import SteamEngineSimulator from '../projects/steam-engine-simulator.svelte';
  import CastleScene from '../projects/castle-scene.svelte';
  import ArtisansDesk from '../projects/artisans-desk.svelte';
  import DioramaByTheOcean from '../projects/diorama-by-the-ocean.svelte';
  import MoustacheKart from '../projects/moustachekart.svelte';
  import Roboddy from '../projects/roboddy.svelte';
  import BubblebyteUIPack from '../projects/bubblebyte-ui-pack.svelte';
  import IronpixelUIPack from '../projects/ironpixel-ui-pack.svelte';
  import Portfolio from '../projects/portfolio.svelte';
  import RecipeBook from '../projects/recipe-book.svelte';
</script>

<article class="projects" data-page="projects">
  <h2 class="h2 article-title">Projects</h2>

  <section class="projects-list">
    <ul class="filter-list">
      <li class="filter-item">
        <button data-filter-btn>Best</button>
      </li>

      <li class="filter-item">
        <button data-filter-btn>Games</button>
      </li>

      <li class="filter-item">
        <button data-filter-btn>Models</button>
      </li>

      <li class="filter-item">
        <button data-filter-btn>Websites</button>
      </li>

      <li class="filter-item">
        <button data-filter-btn>UI</button>
      </li>

      <li class="filter-item">
        <button data-filter-btn>All</button>
      </li>
    </ul>

    <div class="filter-select-box">
      <button class="filter-select" data-select>
        <div class="select-value" data-selecct-value>Select category</div>

        <div class="select-icon">
          <ion-icon name="chevron-down"></ion-icon>
        </div>
      </button>

      <ul class="select-list">
        <li class="select-item">
          <button data-select-item>Best</button>
        </li>

        <li class="select-item">
          <button data-select-item>Games</button>
        </li>

        <li class="select-item">
          <button data-select-item>Models</button>
        </li>

        <li class="select-item">
          <button data-select-item>Websites</button>
        </li>

        <li class="select-item">
          <button data-select-item>UI</button>
        </li>

        <li class="select-item">
          <button data-select-item>All</button>
        </li>
      </ul>
    </div>

    <ul class="project-list">
      <ProjectItem
        link="project-light-bridger"
        title="Light Bridger"
        category="Games"
        categories="games best"
        avif="images-AV1/page-light-bridger.avif"
        fallback="images-fallback/page-light-bridger.jpg"
      />

      <ProjectItem
        link="project-crazy-coast"
        title="Crazy Coast"
        category="Games"
        categories="games"
        avif="images-AV1/page-crazy-coast.avif"
        fallback="images-fallback/page-crazy-coast.jpg"
      />

      <ProjectItem
        link="project-ghost-of-nature"
        title="Ghost of Nature"
        category="Games"
        categories="games"
        avif="images-AV1/page-ghost-of-nature.avif"
        fallback="images-fallback/page-ghost-of-nature.jpg"
      />

      <ProjectItem
        link="project-zombrush"
        title="Zombrush"
        category="Games"
        categories="games"
        avif="images-AV1/page-zombrush.avif"
        fallback="images-fallback/page-zombrush.jpg"
      />

      <ProjectItem
        link="project-angry-birds"
        title="Angry Birds Clone"
        category="Games"
        categories="games best"
        avif="images-AV1/page-angry-birds.avif"
        fallback="images-fallback/page-angry-birds.jpg"
      />

      <ProjectItem
        link="project-flappy-bird"
        title="Flappy Bird Clone"
        category="Games"
        categories="games best"
        avif="images-AV1/page-flappy-bird.avif"
        fallback="images-fallback/page-flappy-bird.jpg"
      />

      <ProjectItem
        link="project-super-mario-3D-world"
        title="Mario 3D World Clone"
        category="Games"
        categories="games"
        avif="images-AV1/page-super-mario-3D-world.avif"
        fallback="images-fallback/page-super-mario-3D-world.jpg"
      />

      <ProjectItem
        link="project-steam-engine-simulator"
        title="Steam Engine Simulator"
        category="Games"
        categories="games"
        avif="images-AV1/page-steam-engine-simulator.avif"
        fallback="images-fallback/page-steam-engine-simulator.jpg"
      />

      <ProjectItem
        link="project-castle-scene"
        title="Castle Scene"
        category="Models"
        categories="models best"
        avif="images-AV1/page-castle-scene.avif"
        fallback="images-fallback/page-castle-scene.jpg"
      />

      <ProjectItem
        link="project-artisans-desk"
        title="Artisans Desk"
        category="Models"
        categories="models best"
        avif="images-AV1/page-Artisans-Desk.avif"
        fallback="images-fallback/page-Artisans-Desk.jpg"
      />

      <ProjectItem
        link="project-diorama-by-the-ocean"
        title="Diorama - By the ocean"
        category="Models"
        categories="models"
        avif="images-AV1/page-diorama-by-the-ocean.avif"
        fallback="images-fallback/page-diorama-by-the-ocean.jpg"
      />

      <ProjectItem
        link="project-moustachekart"
        title="MoustacheKart"
        category="Models"
        categories="models best"
        avif="images-AV1/page-moustachekart.avif"
        fallback="images-fallback/page-moustachekart.jpg"
      />

      <ProjectItem
        link="project-roboddy"
        title="Roboddy"
        category="Models"
        categories="models best"
        avif="images-AV1/page-roboddy.avif"
        fallback="images-fallback/page-roboddy.jpg"
      />

      <ProjectItem
        link="project-bubblebyte-ui-pack"
        title="Bubblebyte UI Pack"
        category="UI"
        categories="ui best"
        avif="images-AV1/page-bubblebyte-ui-pack.avif"
        fallback="images-fallback/page-bubblebyte-ui-pack.jpg"
      />

      <ProjectItem
        link="project-ironpixel-ui-pack"
        title="IronPixel UI Pack"
        category="UI"
        categories="ui"
        avif="images-AV1/page-ironpixel-ui-pack.avif"
        fallback="images-fallback/page-ironpixel-ui-pack.jpg"
      />

      <ProjectItem
        link="project-portfolio"
        title="Portfolio"
        category="Websites"
        categories="websites"
        avif="images-AV1/page-portfolio.avif"
        fallback="images-fallback/page-portfolio.jpg"
      />

      <ProjectItem
        link="project-recipe-book"
        title="Recipe Book"
        category="Websites"
        categories="websites"
        avif="images-AV1/page-recipe-book.avif"
        fallback="images-fallback/page-recipe-book.jpg"
      />
    </ul>

    <LightBridger />
    <CrazyCoast />
    <GhostOfNature />
    <Zombrush />
    <AngryBirds />
    <FlappyBird />
    <SuperMario3DWorld />
    <SteamEngineSimulator />
    <CastleScene />
    <ArtisansDesk />
    <DioramaByTheOcean />
    <MoustacheKart />
    <Roboddy />
    <BubblebyteUIPack />
    <IronpixelUIPack />
    <Portfolio />
    <RecipeBook />
  </section>
</article>
