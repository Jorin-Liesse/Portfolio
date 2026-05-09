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

      <ion-icon name="chevron-down"></ion-icon>
    </button>
  </div>

  <div class="sidebar-info_more">
    <div class="separator"></div>

    <ul class="contacts-list">
      <ContactCard icon="mail-outline" title="Email" value="liesse.jorin@gmail.com" link="mailto:liesse.jorin@gmail.com" />
      <ContactCard icon="phone-portrait-outline" title="Phone" value="+32 483 45 06 05" link="tel:+32483450605" />
      <ContactCard icon="calendar-outline" title="Birthday" value="June 9, 2005" link="https://calendar.google.com/calendar/u/0/r/day/2005/06/09" />
      <ContactCard
        icon="location-outline"
        title="Location"
        value="Zonhoven, Belgium"
        link="https://www.google.com/maps/search/?api=1&query=Zonhoven,Belgium"
      />
    </ul>

    <div class="separator"></div>

    <ul class="social-list">
      <SocialItem icon="logo-linkedin" title="LinkedIn" link="https://www.linkedin.com/in/jorin-liesse-755774287" />
      <SocialItem icon="logo-github" title="GitHub" link="https://github.com/Jorin-Liesse" />
    </ul>
    <br />
  </div>
</aside>

<!-- <style>
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

  .info_more-btn {
    position: absolute;
    top: -15px;
    right: -15px;
    border-radius: 0 15px;
    font-size: 13px;
    color: var(--orange-yellow-crayola);
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
</style> -->
