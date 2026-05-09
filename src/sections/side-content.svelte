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

<style></style>
