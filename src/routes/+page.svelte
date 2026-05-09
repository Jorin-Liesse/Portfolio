<script lang="ts">
  import About from '../articles/about.svelte';
  import Resume from '../articles/resume.svelte';
  import Projects from '../articles/projects.svelte';
  import Contact from '../articles/contact.svelte';

  import MainContent from '../sections/main-content.svelte';
  import SideContent from '../sections/side-content.svelte';

  import AssetsViewer from '../custom/assets-viewer.svelte';
</script>

<SideContent></SideContent>

<MainContent>
  <About></About>
  <Resume></Resume>
  <Projects></Projects>
  <Contact></Contact>
</MainContent>

<AssetsViewer></AssetsViewer>

<style></style>
