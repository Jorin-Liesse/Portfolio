<script lang="ts">
  import { asset } from '$app/paths';
  import { page } from '$app/state';
  import { goto } from '$app/navigation';
  import type { Snippet } from 'svelte';

  import ContactCard from '$lib/components/contact-card.svelte';
  import SocialItem from '$lib/components/social-item.svelte';

  import { ALL_ARTICLES, type Articles } from '$lib/types/articles';

  let sidebarOpen = $state<boolean>(false);

  const activePage = $derived.by(() => {
    const path = page.url.pathname;
    const baseURL = import.meta.env.BASE_URL || '/';
    const relativePath = path.startsWith(baseURL) ? path.slice(baseURL.length) : path;
    const firstSegment = relativePath.split('/').filter(Boolean)[0] ?? '';
    return ALL_ARTICLES.includes(firstSegment as Articles) ? (firstSegment as Articles) : null;
  }) as unknown as Articles;

  let { children }: { children?: Snippet } = $props();

  function toggleSidebar(): void {
    sidebarOpen = !sidebarOpen;
  }

  function setArticle(page: Articles) {
    goto(`${page}`);
  }
</script>

<svelte:head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Portfolio of Jorin Liesse, Game Developer." />
  <meta name="text-scale" content="scale" />

  <link rel="icon" type="image/svg+xml" href={asset('/favicon.svg')} />

  <title>Portfolio, Jorin Liesse</title>

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />

  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet" />
</svelte:head>

<aside class="sidebar" class:active={sidebarOpen}>
  <div class="sidebar-info">
    <figure class="avatar-box">
      <picture>
        <source srcset="images-AV1/my-avatar-2.avif" type="image/avif" />
        <img src="images-fallback/my-avatar-2.png" alt="light-bridger" loading="lazy" width="80" />
      </picture>
    </figure>

    <div class="info-content">
      <h1 class="name">Jorin Liesse</h1>
      <p class="title">Game Developer</p>
    </div>

    <button class="info_more-btn" onclick={toggleSidebar}>
      <span>Show Contacts</span>
      <svg><use href="icons/chevron.svg"></use></svg>
    </button>
  </div>

  <div class="sidebar-info_more">
    <div class="separator"></div>

    <ul class="contacts-list">
      <ContactCard src="icons/mail.svg" title="Email" value="liesse.jorin@gmail.com" link="mailto:liesse.jorin@gmail.com" />
      <ContactCard src="icons/phone.svg" title="Phone" value="+32 483 45 06 05" link="tel:+32483450605" />
      <ContactCard src="icons/calendar.svg" title="Birthday" value="June 9, 2005" link="https://calendar.google.com/calendar/u/0/r/day/2005/06/09" />
      <ContactCard src="icons/location.svg" title="Location" value="Zonhoven, Belgium" link="https://www.google.com/maps/search/?api=1&query=Zonhoven,Belgium" />
    </ul>

    <div class="separator"></div>

    <ul class="social-list">
      <SocialItem src="icons/linkedin.svg" title="LinkedIn" link="https://www.linkedin.com/in/jorin-liesse-755774287" />
      <SocialItem src="icons/github.svg" title="GitHub" link="https://github.com/Jorin-Liesse" />
    </ul>
  </div>
</aside>

<main class="main-content">
  <nav class="navbar">
    <ul class="navbar-list">
      {#each ALL_ARTICLES as article}
        <li class="navbar-item">
          <button class="navbar-link" class:active={activePage === article} onclick={() => setArticle(article)} data-select-item>{article}</button>
        </li>
      {/each}
    </ul>
  </nav>

  <article>
    {@render children?.()}
  </article>
</main>

<style>
  .sidebar.active .info_more-btn svg {
    transform: rotate(0.5turn);
  }

  .info_more-btn svg {
    --primary-color: var(--orange-yellow);
    width: 1rem;
    height: 1rem;
  }

  .info_more-btn {
    position: absolute;
    top: -15px;
    right: -15px;
    border-radius: 0 15px;
    color: var(--orange-yellow);
    background: var(--border-gradient-onyx);
    padding: 10px;
    box-shadow: var(--shadow-2);
    transition: var(--transition-1);
    z-index: 1;
  }

  .info_more-btn::before {
    content: '';
    position: absolute;
    inset: 1px;
    border-radius: inherit;
    background: var(--bg-gradient-jet);
    transition: var(--transition-1);
    z-index: -1;
  }

  .info_more-btn:hover,
  .info_more-btn:focus {
    background: var(--bg-gradient-yellow-1);
  }

  .info_more-btn:hover::before,
  .info_more-btn:focus::before {
    background: var(--bg-gradient-yellow-2);
  }

  .info_more-btn span {
    display: none;
  }

  .sidebar,
  article {
    background: var(--eerie-black-2);
    border: 1px solid var(--jet);
    border-radius: 20px;
    padding: 15px;
    box-shadow: var(--shadow-1);
    z-index: 1;
  }

  @media (min-width: 450px) {
  }

  @media (min-width: 580px) {
    .sidebar,
    article {
      width: 520px;
      margin-inline: auto;
      padding: 30px;
    }

    .info_more-btn {
      top: -30px;
      right: -30px;
      padding: 10px 15px;
    }

    .info_more-btn span {
      display: block;
      font-size: var(--fs-8);
    }

    .info_more-btn svg {
      display: none;
    }
  }

  @media (max-width: 768px) {
  }

  @media (min-width: 768px) {
    .sidebar,
    article {
      width: 700px;
    }
  }

  @media (min-width: 1024px) {
    .sidebar,
    article {
      width: 950px;
      box-shadow: var(--shadow-5);
    }
  }

  @media (min-width: 1250px) {
    .info_more-btn {
      display: none;
    }

    .sidebar,
    article {
      width: auto;
    }

    article {
      min-height: 100%;
    }

    .sidebar {
      margin: 0;
    }
  }

  /* -------------- */

  :global :root {
    /* gradient */
    --bg-gradient-onyx: linear-gradient(to bottom right, hsl(240, 1%, 25%) 3%, hsl(0, 0%, 19%) 97%);
    --bg-gradient-jet: linear-gradient(to bottom right, hsla(240, 1%, 18%, 0.251) 0%, hsla(240, 2%, 11%, 0) 100%), hsl(240, 2%, 13%);
    --bg-gradient-yellow-1: linear-gradient(to bottom right, hsl(45, 100%, 71%) 0%, hsla(36, 100%, 69%, 0) 50%);
    --bg-gradient-yellow-2: linear-gradient(135deg, hsla(45, 100%, 71%, 0.251) 0%, hsla(35, 100%, 68%, 0) 59.86%), hsl(240, 2%, 13%);
    --border-gradient-onyx: linear-gradient(to bottom right, hsl(0, 0%, 25%) 0%, hsla(0, 0%, 25%, 0) 50%);
    --text-gradient-yellow: linear-gradient(to right, hsl(45, 100%, 72%), hsl(35, 100%, 68%));

    /* solid */
    --jet: hsl(0, 0%, 22%);
    --orange-yellow: hsl(45, 100%, 72%);
    --onyx: hsl(240, 1%, 17%);
    --onyx-75: hsla(240, 1%, 17%, 0.75);
    --eerie-black-1: hsl(240, 2%, 13%);
    --eerie-black-2: hsl(240, 2%, 12%);
    --smoky-black: hsl(0, 0%, 7%);
    --white-1: hsl(0, 0%, 100%);
    --white-2: hsl(0, 0%, 98%);
    --vegas-gold: hsl(45, 54%, 58%);
    --light-gray: hsl(0, 0%, 84%);
    --light-gray-70: hsla(0, 0%, 84%, 0.7);
    --bittersweet-shimmer: hsl(0, 43%, 51%);

    /* font-family */
    --ff-poppins: 'Poppins', sans-serif;

    /* font-size */
    --fs-1: 24px;
    --fs-2: 18px;
    --fs-3: 17px;
    --fs-4: 16px;
    --fs-5: 15px;
    --fs-6: 14px;
    --fs-7: 13px;
    --fs-8: 11px;

    /* font-weight */
    --fw-300: 300;
    --fw-400: 400;
    --fw-500: 500;
    --fw-600: 600;

    /* shadow */
    --shadow-1: -4px 8px 24px hsla(0, 0%, 0%, 0.25);
    --shadow-2: 0 16px 30px hsla(0, 0%, 0%, 0.25);
    --shadow-3: 0 16px 40px hsla(0, 0%, 0%, 0.25);
    --shadow-4: 0 25px 50px hsla(0, 0%, 0%, 0.15);
    --shadow-5: 0 24px 80px hsla(0, 0%, 0%, 0.25);

    /* transition */
    --transition-1: 0.25s ease;
    --transition-2: 0.5s ease-in-out;
  }

  :global *,
  :global *::before,
  :global *::after {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
    font-family: var(--ff-poppins);
  }

  :global img,
  :global picture,
  :global video {
    -webkit-user-drag: none;
    display: block;
  }

  :global figure {
    margin: 0;
  }

  :global a {
    text-decoration: none;
  }

  :global li {
    list-style: none;
  }

  :global button {
    font: inherit;
    background: none;
    border: none;
    text-align: left;
    cursor: pointer;
  }

  :global ::selection {
    background: var(--orange-yellow);
    color: var(--smoky-black);
  }

  :global :focus {
    outline-color: var(--orange-yellow);
  }

  :global input,
  :global textarea {
    display: block;
    width: 100%;
    background: none;
    font: inherit;
    border: red solid 1px;
  }

  :global(body) {
    background: var(--smoky-black);
    margin: 15px 12px;
    margin-bottom: 75px;
    min-width: 259px;
  }

  @media (min-width: 450px) {
  }

  @media (min-width: 580px) {
  }

  @media (max-width: 768px) {
  }

  @media (min-width: 768px) {
  }

  @media (min-width: 1024px) {
  }

  @media (min-width: 1250px) {
  }

  :global {
    .separator {
      width: 100%;
      height: 1px;
      background: var(--jet);
      margin: 16px 0;
    }

    .icon-box {
      position: relative;
      background: var(--border-gradient-onyx);
      width: 30px;
      height: 30px;
      border-radius: 8px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 16px;
      color: var(--orange-yellow);
      box-shadow: var(--shadow-1);
      z-index: 1;
    }

    .icon-box::before {
      content: '';
      position: absolute;
      inset: 1px;
      background: var(--eerie-black-1);
      border-radius: inherit;
      z-index: -1;
    }

    .h2,
    .h3,
    .h4,
    .h5 {
      color: var(--white-2);
      text-transform: capitalize;
    }

    .h2 {
      font-size: var(--fs-1);
    }

    .h3 {
      font-size: var(--fs-2);
    }

    .h4 {
      font-size: var(--fs-4);
    }

    .h5 {
      font-size: var(--fs-7);
      font-weight: var(--fw-500);
    }

    .article-title {
      position: relative;
      padding-bottom: 7px;
    }

    .article-title::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 30px;
      height: 3px;
      background: var(--text-gradient-yellow);
      border-radius: 3px;
    }

    .has-scrollbar::-webkit-scrollbar {
      width: 5px; /* for vertical scrollbar */
      height: 5px; /* for horizontal scrollbar */
    }

    .has-scrollbar::-webkit-scrollbar-track {
      background: var(--onyx);
      border-radius: 5px;
    }

    .has-scrollbar::-webkit-scrollbar-thumb {
      background: var(--orange-yellow);
      border-radius: 5px;
    }

    .has-scrollbar::-webkit-scrollbar-button {
      width: 20px;
    }

    .content-card {
      position: relative;
      background: var(--border-gradient-onyx);
      padding: 15px;
      padding-top: 45px;
      border-radius: 14px;
      box-shadow: var(--shadow-2);
      cursor: pointer;
      z-index: 1;
    }

    .content-card::before {
      content: '';
      position: absolute;
      inset: 1px;
      background: var(--bg-gradient-jet);
      border-radius: inherit;
      z-index: -1;
    }

    /*-----------------------------------*\
  #SIDEBAR
\*-----------------------------------*/

    .sidebar {
      margin-bottom: 15px;
      max-height: 112px;
      overflow: hidden;
      transition: var(--transition-2);
    }

    .sidebar.active {
      max-height: 405px;
    }

    .sidebar-info {
      position: relative;
      display: flex;
      justify-content: flex-start;
      align-items: center;
      gap: 15px;
    }

    .avatar-box {
      border-radius: 50px;
    }

    .info-content .name {
      color: var(--white-2);
      font-size: var(--fs-3);
      font-weight: var(--fw-500);
      letter-spacing: -0.25px;
      margin-bottom: 10px;
    }

    .info-content .title {
      color: var(--white-1);
      background: var(--onyx);
      font-size: var(--fs-8);
      font-weight: var(--fw-300);
      width: max-content;
      padding: 3px 12px;
      border-radius: 8px;
    }

    .sidebar-info_more {
      opacity: 0;
      visibility: hidden;
      transition: var(--transition-2);
    }

    .sidebar.active .sidebar-info_more {
      opacity: 1;
      visibility: visible;
    }

    .contacts-list {
      display: grid;
      grid-template-columns: 1fr;
      gap: 16px;
    }

    .social-list {
      display: flex;
      justify-content: flex-start;
      align-items: center;
      gap: 15px;
      padding-bottom: 4px;
      padding-left: 7px;
    }

    /*-----------------------------------*\
  #NAVBAR
\*-----------------------------------*/

    .navbar {
      position: fixed;
      bottom: 0;
      left: 0;
      width: 100%;
      background: var(--onyx-75);
      backdrop-filter: blur(10px);
      border: 1px solid var(--jet);
      border-radius: 12px 12px 0 0;
      box-shadow: var(--shadow-2);
      z-index: 5;
    }

    .navbar-list {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
      padding: 0 10px;
    }

    .navbar-link {
      color: var(--light-gray);
      font-size: var(--fs-8);
      padding: 20px 7px;
      transition: color var(--transition-1);
    }

    .navbar-link:hover,
    .navbar-link:focus {
      color: var(--light-gray-70);
    }

    .navbar-link.active {
      color: var(--orange-yellow);
    }

    /*-----------------------------------*\
  #ABOUT
\*-----------------------------------*/

    .about .article-title {
      margin-bottom: 15px;
    }

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

    .service-item {
      position: relative;
      background: var(--border-gradient-onyx);
      padding: 20px;
      border-radius: 14px;
      box-shadow: var(--shadow-2);
      z-index: 1;

      display: flex;
      justify-content: flex-start;
      align-items: flex-start;
      gap: 18px;
    }

    .service-item::before {
      content: '';
      position: absolute;
      inset: 1px;
      background: var(--bg-gradient-jet);
      border-radius: inherit;
      z-index: -1;
    }

    .service-icon-box {
      margin-bottom: 10px;
    }

    .service-icon-box img {
      margin: auto;
    }

    .service-content-box {
      text-align: left;
    }

    .service-item-title {
      margin-bottom: 0;
      margin-top: 5px;
      margin-bottom: 7px;
    }

    .service-item-text {
      color: var(--light-gray);
      font-size: var(--fs-6);
      font-weight: var(--fw-3);
      line-height: 1.6;
    }

    .service-item {
      display: flex;
      justify-content: flex-start;
      align-items: flex-start;
      gap: 18px;
      padding: 30px;
    }

    .skills {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
      justify-content: center;
    }

    .skill-card {
      position: relative;
      z-index: 1;
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      background: var(--border-gradient-onyx);
      border-radius: 0.75rem;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
      padding: 0.5rem 0.75rem;
      transition:
        transform 0.2s ease,
        box-shadow 0.2s ease;
      width: auto;
    }

    .skill-card::before {
      content: '';
      position: absolute;
      inset: 1px;
      background: var(--bg-gradient-jet);
      border-radius: inherit;
      z-index: -1;
    }

    .skill-card img {
      width: 28px;
      height: 28px;
    }

    .skill-card h3 {
      color: var(--light-gray);
      font-size: 1rem;
      font-weight: 600;
      margin: 0;
    }

    /*-----------------------------------*\
  #RESUME
\*-----------------------------------*/

    .article-title {
      margin-bottom: 30px;
    }

    .skills-title {
      margin-bottom: 20px;
    }

    .skills-list {
      padding: 20px;
    }

    .skills-item:not(:last-child) {
      margin-bottom: 15px;
    }

    .skill .title-wrapper {
      display: flex;
      align-items: center;
      gap: 5px;
      margin-bottom: 8px;
    }

    .skill .title-wrapper data {
      color: var(--light-gray);
      font-size: var(--fs-7);
      font-weight: var(--fw-300);
    }

    .skill-progress-bg {
      background: var(--jet);
      width: 100%;
      height: 8px;
      border-radius: 10px;
    }

    .skill-progress-fill {
      background: var(--text-gradient-yellow);
      height: 100%;
      border-radius: inherit;
    }

    /*-----------------------------------*\
  #PORTFOLIO
\*-----------------------------------*/

    .filter-list {
      display: none;
    }

    .filter-select-box {
      position: relative;
      margin-bottom: 25px;
    }

    .filter-select {
      background: var(--eerie-black-2);
      color: var(--light-gray);
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 100%;
      padding: 12px 16px;
      border: 1px solid var(--jet);
      border-radius: 14px;
      font-size: var(--fs-6);
      font-weight: var(--fw-300);
    }

    .filter-select.active .select-icon {
      transform: rotate(0.5turn);
    }

    .select-list {
      background: var(--eerie-black-2);
      position: absolute;
      top: calc(100% + 6px);
      width: 100%;
      padding: 6px;
      border: 1px solid var(--jet);
      border-radius: 14px;
      z-index: 2;
      opacity: 0;
      visibility: hidden;
      pointer-events: none;
      transition: 0.15s ease-in-out;
    }

    .filter-select.active + .select-list {
      opacity: 1;
      visibility: visible;
      pointer-events: all;
    }

    .select-item button {
      background: var(--eerie-black-2);
      color: var(--light-gray);
      font-size: var(--fs-6);
      font-weight: var(--fw-300);
      text-transform: capitalize;
      width: 100%;
      padding: 8px 10px;
      border-radius: 8px;
    }

    .select-item button:hover {
      --eerie-black-2: hsl(240, 2%, 20%);
    }

    .project-list {
      display: grid;
      grid-template-columns: 1fr;
      gap: 30px;
    }

    .project-img {
      position: relative;
      width: 100%;
      height: 200px;
      border-radius: 16px;
      overflow: hidden;
      margin-bottom: 5px;
    }

    .project-img::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: transparent;
      z-index: 1;
      transition: var(--transition-1);
    }

    .project-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition-1);
    }

    .presenter {
      width: 100%;
      height: calc(100% / (9 / 16));
      aspect-ratio: 16 / 9;
      border: none;
      object-fit: cover;
      border-radius: 16px;
    }

    .presenter-content {
      background: var(--onyx-75);
      border: 1px solid var(--jet);
      box-shadow: var(--shadow-1);
      width: 100%;
      height: 100%;
      aspect-ratio: 16 / 9;
      object-fit: cover;
      border-radius: 16px;
    }

    .content {
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
    }

    .project-block {
      position: relative;
      flex: 1 1 100%;
      border-radius: 12px;
      overflow: hidden;
    }

    .project-block.half {
      flex: 1 1 calc(50% - 16px);
    }

    .project-block img,
    .project-block video {
      display: block;
      width: 100%;
      height: auto;
      object-fit: cover;
    }

    .project-block .on-top-text {
      position: absolute;
      bottom: 12px; /* distance from bottom of image */
      left: 12px; /* distance from left */
      margin: 0;
      padding: 8px 12px;
      background: rgba(0, 0, 0, 0.5); /* semi-transparent background */
      color: white;
      border-radius: 8px;
      font-size: 1rem;
    }

    .project-block.text-box {
      position: relative;
      background: var(--border-gradient-onyx);
      padding: 20px;
      border-radius: 14px;
      box-shadow: var(--shadow-2);
      z-index: 1;
    }

    .project-block.text-box::before {
      content: '';
      position: absolute;
      inset: 1px;
      background: var(--bg-gradient-jet);
      border-radius: inherit;
      z-index: -1;
    }

    .project-block.text-box p.centered {
      text-align: center;
    }

    .project-block.text-box p {
      color: var(--white-2);
      font-size: 1rem;
      line-height: 1.5;
      margin: 0;
    }

    .project-spacer {
      padding-bottom: 16px;
    }

    .links {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
      justify-content: center;
    }

    /*-----------------------------------*\
  #CONTACT
\*-----------------------------------*/

    .mapbox {
      position: relative;
      height: 250px;
      width: 100%;
      border-radius: 16px;
      margin-bottom: 30px;
      border: 1px solid var(--jet);
      overflow: hidden;
    }

    .mapbox figure {
      height: 100%;
    }

    .mapbox iframe {
      width: 100%;
      height: 100%;
      border: none;
      filter: grayscale(1) invert(1);
    }

    .contact-form {
      margin-bottom: 10px;
    }

    .form-title {
      margin-bottom: 20px;
    }

    .input-wrapper {
      display: grid;
      grid-template-columns: 1fr;
      gap: 25px;
      margin-bottom: 25px;
    }

    .form-input {
      color: var(--white-2);
      font-size: var(--fs-6);
      font-weight: var(--fw-400);
      padding: 13px 20px;
      border: 1px solid var(--jet);
      border-radius: 14px;
      outline: none;
    }

    .form-input::placeholder {
      font-weight: var(--fw-500);
    }

    .form-input:focus {
      border-color: var(--orange-yellow);
    }

    textarea.form-input {
      min-height: 100px;
      height: 120px;
      max-height: 200px;
      resize: vertical;
      margin-bottom: 25px;
    }

    textarea.form-input::-webkit-resizer {
      display: none;
    }

    .form-input:focus:invalid {
      border-color: var(--bittersweet-shimmer);
    }

    .form-btn {
      position: relative;
      width: 100%;
      background: var(--border-gradient-onyx);
      color: var(--orange-yellow);
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 10px;
      padding: 13px 20px;
      border-radius: 14px;
      font-size: var(--fs-6);
      text-transform: capitalize;
      box-shadow: var(--shadow-3);
      z-index: 1;
      transition: var(--transition-1);
    }

    .form-btn::before {
      content: '';
      position: absolute;
      inset: 1px;
      background: var(--bg-gradient-jet);
      border-radius: inherit;
      z-index: -1;
      transition: var(--transition-1);
    }

    .form-btn img {
      color: red !important;
      fill: red !important;
      stroke: red !important;
      width: 16px;
      height: 16px;
    }

    .form-btn:hover {
      background: var(--bg-gradient-yellow-1);
    }

    .form-btn:hover::before {
      background: var(--bg-gradient-yellow-2);
    }

    .form-btn:disabled {
      opacity: 0.7;
      cursor: not-allowed;
    }

    .form-btn:disabled:hover {
      background: var(--border-gradient-onyx);
    }

    .form-btn:disabled:hover::before {
      background: var(--bg-gradient-jet);
    }

    /*-----------------------------------*\
  #RESPONSIVE
\*-----------------------------------*/

    @media (min-width: 450px) {
      .project-img {
        height: auto;
      }
    }

    @media (min-width: 580px) {
      .article-title {
        font-weight: var(--fw-600);
        padding-bottom: 15px;
      }

      .article-title::after {
        width: 40px;
        height: 5px;
      }

      .icon-box {
        width: 48px;
        height: 48px;
        border-radius: 12px;
        font-size: 18px;
      }

      body {
        margin-top: 60px;
        margin-bottom: 100px;
      }

      /**
   * #SIDEBAR
   */

      .sidebar {
        max-height: 180px;
        margin-bottom: 30px;
      }

      .sidebar.active {
        max-height: 584px;
      }

      .sidebar-info {
        gap: 25px;
      }

      .avatar-box {
        border-radius: 30px;
      }

      .avatar-box picture img {
        width: 120px;
      }

      .info-content .name {
        margin-bottom: 15px;
      }

      .info-content .title {
        padding: 5px 18px;
      }

      .separator {
        margin: 32px 0;
      }

      .contacts-list {
        gap: 20px;
      }

      .contact-info {
        max-width: calc(100% - 64px);
        width: calc(100% - 64px);
      }

      /**
   * #NAVBAR
   */

      .navbar {
        border-radius: 20px 20px 0 0;
      }

      .navbar-list {
        gap: 20px;
      }

      .navbar-link {
        --fs-8: 14px;
      }

      /**
   * #ABOUT
   */

      .about .article-title {
        margin-bottom: 20px;
      }

      /* service */

      .service-item {
        display: flex;
        justify-content: flex-start;
        align-items: flex-start;
        gap: 18px;
        padding: 30px;
      }

      .service-icon-box {
        margin-bottom: 0;
        margin-top: 5px;
      }

      .service-content-box {
        text-align: left;
      }

      /**
   * #RESUME
   */
      .skills-item:not(:last-child) {
        margin-bottom: 25px;
      }

      /**
   * #PORTFOLIO
   */

      .project-img {
        border-radius: 16px;
      }

      /**
   * #CONTACT
   */

      .mapbox {
        height: 380px;
        border-radius: 18px;
      }

      .input-wrapper {
        gap: 30px;
        margin-bottom: 30px;
      }

      .form-input {
        padding: 15px 20px;
      }

      textarea.form-input {
        margin-bottom: 30px;
      }

      .form-btn {
        --fs-6: 16px;
        padding: 16px 20px;
      }

      .form-btn img {
        width: 18px;
        height: 18px;
      }
    }

    @media (max-width: 768px) {
      .skills {
        display: flex;
        flex-wrap: wrap;
        gap: 0.75rem 1rem;
        justify-content: center;
      }

      .skill-card h3 {
        display: none;
      }

      .skill-card.active h3 {
        display: block;
      }

      .skill-card {
        cursor: pointer;
        justify-content: center;
        padding: 0.5rem;
      }

      .project-block.half {
        flex: 1 1 100%;
      }
    }

    @media (min-width: 768px) {
      .has-scrollbar::-webkit-scrollbar-button {
        width: 100px;
      }

      /**
   * SIDEBAR
   */

      .contacts-list {
        grid-template-columns: 1fr 1fr;
        gap: 30px 15px;
      }

      /**
   * NAVBAR
   */

      .navbar-link {
        --fs-8: 15px;
      }

      /**
   * PORTFOLIO
   */

      .article-title {
        padding-bottom: 20px;
      }

      .filter-select-box {
        display: none;
      }

      .filter-list {
        display: flex;
        justify-content: flex-start;
        align-items: center;
        gap: 25px;
        padding-left: 5px;
        margin-bottom: 30px;
      }

      .filter-item button {
        color: var(--light-gray);
        font-size: var(--fs-5);
        transition: var(--transition-1);
      }

      .filter-item button:hover {
        color: var(--light-gray-70);
      }

      .filter-item button.active {
        color: var(--orange-yellow);
      }

      /* portfolio */

      .project-list {
        grid-template-columns: 1fr 1fr;
      }

      /**
   * CONTACT
   */

      .input-wrapper {
        grid-template-columns: 1fr 1fr;
      }

      .form-btn {
        width: max-content;
        margin-left: auto;
      }
    }

    @media (min-width: 1024px) {
      body {
        margin-bottom: 60px;
      }

      .main-content {
        position: relative;
        width: max-content;
        margin: auto;
      }

      /**
   * NAVBAR
   */

      .navbar {
        position: absolute;
        bottom: auto;
        top: 0;
        left: auto;
        right: 0;
        width: max-content;
        border-radius: 0 20px;
        padding: 0 20px;
        box-shadow: none;
      }

      .navbar-list {
        gap: 30px;
        padding: 0 20px;
      }

      .navbar-link {
        font-weight: var(--fw-500);
      }

      /**
   * ABOUT
   */

      /* service */

      .service-list {
        grid-template-columns: 1fr 1fr;
        gap: 20px 25px;
      }

      /**
   * PORTFOLIO
   */

      .project-list {
        grid-template-columns: repeat(3, 1fr);
      }
    }

    @media (min-width: 1250px) {
      body::-webkit-scrollbar {
        width: 20px;
      }

      body::-webkit-scrollbar-track {
        background: var(--smoky-black);
      }

      body::-webkit-scrollbar-thumb {
        border: 5px solid var(--smoky-black);
        background: hsla(0, 0%, 100%, 0.1);
        border-radius: 20px;
        box-shadow:
          inset 1px 1px 0 hsla(0, 0%, 100%, 0.11),
          inset -1px -1px 0 hsla(0, 0%, 100%, 0.11);
      }

      body::-webkit-scrollbar-thumb:hover {
        background: hsla(0, 0%, 100%, 0.15);
      }

      body::-webkit-scrollbar-button {
        height: 60px;
      }

      /**
   * REUSED STYLE
   */

      body {
        max-width: 1200px;
        margin-inline: auto;
        display: flex;
        justify-content: center;
        align-items: stretch;
        gap: 25px;
      }

      .main-content {
        min-width: 75%;
        width: 75%;
        margin: 0;
      }

      /**
   * SIDEBAR
   */

      .sidebar {
        position: sticky;
        top: 60px;
        max-height: max-content;
        height: 100%;
        margin-bottom: 0;
        padding-top: 60px;
        z-index: 1;
      }

      .sidebar-info {
        flex-direction: column;
      }

      .avatar-box picture img {
        width: 150px;
      }

      .info-content .name {
        white-space: nowrap;
        text-align: center;
      }

      .info-content .title {
        margin: auto;
      }

      .sidebar-info_more {
        opacity: 1;
        visibility: visible;
      }

      .contacts-list {
        grid-template-columns: 1fr;
      }

      .contact-info :is(.contact-link) {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
      }

      .contact-info :is(.contact-link, time, address, phone, mail) {
        --fs-7: 14px;
        font-weight: var(--fw-300);
      }

      .separator:last-of-type {
        margin: 15px 0;
        opacity: 0;
      }

      .social-list {
        justify-content: center;
      }
    }
  }
</style>
