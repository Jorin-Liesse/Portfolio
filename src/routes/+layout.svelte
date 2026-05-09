<script lang="ts">
  import type { Snippet } from 'svelte';
  import '../app.css';

  let { children }: { children?: Snippet } = $props();
</script>

{@render children?.()}

<style>
  :global :root {
    --primary-color: #ffdb70;
    --secondary-color: #383838;

    /* gradient */

    --bg-gradient-onyx: linear-gradient(to bottom right, hsl(240, 1%, 25%) 3%, hsl(0, 0%, 19%) 97%);
    --bg-gradient-jet: linear-gradient(to bottom right, hsla(240, 1%, 18%, 0.251) 0%, hsla(240, 2%, 11%, 0) 100%), hsl(240, 2%, 13%);
    --bg-gradient-yellow-1: linear-gradient(to bottom right, hsl(45, 100%, 71%) 0%, hsla(36, 100%, 69%, 0) 50%);
    --bg-gradient-yellow-2: linear-gradient(135deg, hsla(45, 100%, 71%, 0.251) 0%, hsla(35, 100%, 68%, 0) 59.86%), hsl(240, 2%, 13%);
    --border-gradient-onyx: linear-gradient(to bottom right, hsl(0, 0%, 25%) 0%, hsla(0, 0%, 25%, 0) 50%);
    --text-gradient-yellow: linear-gradient(to right, hsl(45, 100%, 72%), hsl(35, 100%, 68%));

    /* solid */

    --jet: hsl(0, 0%, 22%);
    --onyx: hsl(240, 1%, 17%);
    --eerie-black-1: hsl(240, 2%, 13%);
    --eerie-black-2: hsl(240, 2%, 12%);
    --smoky-black: hsl(0, 0%, 7%);
    --white-1: hsl(0, 0%, 100%);
    --white-2: hsl(0, 0%, 98%);
    --orange-yellow-crayola: hsl(45, 100%, 72%);
    --vegas-gold: hsl(45, 54%, 58%);
    --light-gray: hsl(0, 0%, 84%);
    --light-gray-70: hsla(0, 0%, 84%, 0.7);
    --bittersweet-shimmer: hsl(0, 43%, 51%);

    /**
   * typography
   */

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

    /**
   * shadow
   */

    --shadow-1: -4px 8px 24px hsla(0, 0%, 0%, 0.25);
    --shadow-2: 0 16px 30px hsla(0, 0%, 0%, 0.25);
    --shadow-3: 0 16px 40px hsla(0, 0%, 0%, 0.25);
    --shadow-4: 0 25px 50px hsla(0, 0%, 0%, 0.15);
    --shadow-5: 0 24px 80px hsla(0, 0%, 0%, 0.25);

    /**
   * transition
   */

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
  }

  /* :global html {
    font-family: var(--ff-poppins);
  }

  :global body {
    background: var(--smoky-black);
    margin: 15px 12px;
    margin-bottom: 75px;
    min-width: 259px;
  } */

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
    background: var(--orange-yellow-crayola);
    color: var(--smoky-black);
  }

  :global :focus {
    outline-color: var(--orange-yellow-crayola);
  }
</style>
