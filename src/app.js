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
    if (match) {
      void item.offsetWidth;
      item.classList.add('active');
    }
  });
};

const updateSelection = (btn, value) => {
  selectValue.innerText = btn.innerText;
  filterFunc(value);

  lastClickedBtn?.classList.remove('active');
  btn.classList.add('active');
  lastClickedBtn = btn;
};

select?.addEventListener('click', () => select.classList.toggle('active'));
selectItems.forEach((item) =>
  item.addEventListener('click', () => {
    updateSelection(item, item.innerText.toLowerCase());
    select.classList.remove('active');
  })
);

filterBtns.forEach((btn) => btn.addEventListener('click', () => updateSelection(btn, btn.innerText.toLowerCase())));
