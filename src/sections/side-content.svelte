<script lang="ts">
  import ContactCard from '../components/contact-card.svelte';
  import SocialItem from '../components/social-item.svelte';

  let sidebarOpen: boolean = false;

  function toggleSidebar(): void {
    sidebarOpen = !sidebarOpen;
  }
</script>

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
    <br />
  </div>
</aside>

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

  @media (min-width: 580px) {
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

  @media (min-width: 1250px) {
    .info_more-btn {
      display: none;
    }
  }
</style>
