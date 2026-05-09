// ---------- Custom Select + Filter ----------
const select = document.querySelector('[data-select]');
const selectValue = document.querySelector('[data-select-value]');
const selectItems = document.querySelectorAll('[data-select-item]');
const filterBtns = document.querySelectorAll('[data-filter-btn]');
const filterItems = document.querySelectorAll('[data-filter-item]');

let lastClickedBtn = filterBtns[0];

const filterFunc = function (selectedValue) {
  filterItems.forEach((item) => {
    item.classList.remove('active');
    const match = selectedValue === 'all' || item.dataset.category?.includes(selectedValue);
    if (match) item.classList.add('active');
  });
};

const updateSelection = (btn, value) => {
  selectValue.innerText = btn.innerText;
  filterFunc(value);

  lastClickedBtn?.classList.remove('active');
  btn.classList.add('active');
  lastClickedBtn = btn;

  closeProjectPage();
};

select?.addEventListener('click', () => select.classList.toggle('active'));
selectItems.forEach((item) =>
  item.addEventListener('click', () => {
    updateSelection(item, item.innerText.toLowerCase());
    select.classList.remove('active');
  })
);

filterBtns.forEach((btn) => btn.addEventListener('click', () => updateSelection(btn, btn.innerText.toLowerCase())));

// const param = new URLSearchParams(window.location.search).get('pre-filter');
// if (param) {
//   lastClickedBtn = [...filterBtns].find((btn) => btn.innerText.toLowerCase() === param.toLowerCase()) || lastClickedBtn;
// }

// ---------- Project Pages ----------
const projectList = document.querySelector('.project-list');
let lastOpenedProject = null;

const projectLinks = document.querySelectorAll('[data-project-link]');
projectLinks.forEach((link) =>
  link.addEventListener('click', (event) => {
    const data = link.dataset.projectLink;
    openProjectPage(event, data);
  })
);

function openProjectPage(event, projectClass) {
  event.preventDefault();
  const projectPage = document.querySelector(`.${projectClass}`);

  if (projectPage) {
    projectPage.classList.add('active');
    window.scrollTo({ top: 0, left: 0, behavior: 'smooth' });
  }
  projectList?.classList.add('hidden');

  lastClickedBtn?.classList.remove('active');
  lastOpenedProject = projectClass;
  calcScale();
}

function closeProjectPage() {
  const projectPage = document.querySelector(`.${lastOpenedProject}`);
  projectPage?.classList.remove('active');
  projectList?.classList.remove('hidden');
}

function calcScale() {
  const container = document.querySelector(`.${lastOpenedProject} .iframe-presenter-container`);
  if (!container) return;

  const iframe = container.querySelector('iframe');
  const scale = container.clientWidth / 1280;
  iframe.style.setProperty('--iframe-presenter-scale', scale);
}

window.addEventListener('resize', calcScale);
document.addEventListener('DOMContentLoaded', calcScale);
