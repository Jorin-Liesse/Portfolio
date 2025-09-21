// ---------- Helpers ----------
const toggleActive = elem => elem.classList.toggle("active");

// ---------- Sidebar ----------
const sidebar = document.querySelector("[data-sidebar]");
const sidebarBtn = document.querySelector("[data-sidebar-btn]");
sidebarBtn?.addEventListener("click", () => toggleActive(sidebar));

// ---------- Testimonials Modal ----------
const modal = {
  container: document.querySelector("[data-modal-container]"),
  img: document.querySelector("[data-modal-img]"),
  title: document.querySelector("[data-modal-title]"),
  text: document.querySelector("[data-modal-text]"),
  closeBtn: document.querySelector("[data-modal-close-btn]"),
  overlay: document.querySelector("[data-overlay]"),
};

const toggleModal = () => {
  modal.container.classList.toggle("active");
  modal.overlay.classList.toggle("active");
};

document.querySelectorAll("[data-testimonials-item]").forEach(item => {
  item.addEventListener("click", () => {
    modal.img.src = item.querySelector("[data-testimonials-avatar]").src;
    modal.img.alt = item.querySelector("[data-testimonials-avatar]").alt;
    modal.title.innerHTML = item.querySelector("[data-testimonials-title]").innerHTML;
    modal.text.innerHTML = item.querySelector("[data-testimonials-text]").innerHTML;
    toggleModal();
  });
});

modal.closeBtn?.addEventListener("click", toggleModal);
modal.overlay?.addEventListener("click", toggleModal);

// ---------- Custom Select + Filter ----------
const select = document.querySelector("[data-select]");
const selectValue = document.querySelector("[data-selecct-value]");
const selectItems = document.querySelectorAll("[data-select-item]");
const filterBtns = document.querySelectorAll("[data-filter-btn]");
const filterItems = document.querySelectorAll("[data-filter-item]");

let lastClickedBtn = filterBtns[0];

const filterFunc = function (selectedValue) {
  filterItems.forEach(item => item.classList.remove("active"));
  filterItems[0]?.offsetWidth;

  filterItems.forEach(item => {
    const match = selectedValue === "all" || item.dataset.category?.includes(selectedValue);
    if (match) item.classList.add("active");
  });
};


const updateSelection = (btn, value) => {
  selectValue.innerText = btn.innerText;
  filterFunc(value);

  lastClickedBtn?.classList.remove("active");
  btn.classList.add("active");
  lastClickedBtn = btn;

  closeProjectPage();
};

select?.addEventListener("click", () => toggleActive(select));
selectItems.forEach(item =>
  item.addEventListener("click", () => {
    updateSelection(item, item.innerText.toLowerCase());
    toggleActive(select);
  })
);

filterBtns.forEach(btn =>
  btn.addEventListener("click", () =>
    updateSelection(btn, btn.innerText.toLowerCase())
  )
);

// Apply pre-filter if query param exists
const param = new URLSearchParams(window.location.search).get("pre-filter");
if (param) {
  const matchBtn = [...filterBtns].find(
    btn => btn.innerText.toLowerCase() === param.toLowerCase()
  );
  if (matchBtn) updateSelection(matchBtn, param.toLowerCase());
}

// ---------- Form Validation ----------
const form = document.querySelector("[data-form]");
const formBtn = document.querySelector("[data-form-btn]");
form?.querySelectorAll("[data-form-input]").forEach(input => {
  input.addEventListener("input", () =>
    form.checkValidity()
      ? formBtn.removeAttribute("disabled")
      : formBtn.setAttribute("disabled", "")
  );
});

// ---------- Page Navigation ----------
const navigationLinks = document.querySelectorAll("[data-nav-link]");
const pages = document.querySelectorAll("[data-page]");

navigationLinks.forEach(link =>
  link.addEventListener("click", () => {
    const targetPage = link.innerText.toLowerCase();
    pages.forEach((page, i) => {
      const active = page.dataset.page === targetPage;
      page.classList.toggle("active", active);
      navigationLinks[i].classList.toggle("active", active);
    });

    window.scrollTo(0, 0);
    lastClickedBtn?.click();
    closeProjectPage();
  })
);

// ---------- Project Pages ----------
const projectList = document.querySelector(".project-list");
let lastOpenedProject = null;

function openProjectPage(event, projectClass) {
  event.preventDefault();
  const projectPage = document.querySelector(`.${projectClass}`);

  if (projectPage) {
    projectPage.classList.add("active");
    window.scrollTo(0, 0);
  }
  projectList?.classList.add("hidden");

  lastClickedBtn?.classList.remove("active");
  lastOpenedProject = projectClass;
  calcScale();
}

function closeProjectPage() {
  const projectPage = document.querySelector(`.${lastOpenedProject}`);
  projectPage?.classList.remove("active");
  projectList?.classList.remove("hidden");
  muteElements();
}

function calcScale() {
  const container = document.querySelector(
    `.${lastOpenedProject} .iframe-presenter-container`
  );
  if (!container) return;

  const iframe = container.querySelector("iframe");
  const scale = container.clientWidth / 1280;
  iframe.style.setProperty("--iframe-presenter-scale", scale);
}

function muteElements() {
  document.querySelectorAll("iframe").forEach(iframe => {
    iframe.src = iframe.src; // reload to mute
  });
}

window.addEventListener("resize", calcScale);
document.addEventListener("DOMContentLoaded", calcScale);
