/**
 * Toggles the target element referenced by [data-collapse-toggle] on click.
 * Used for the mobile navigation ("burger") menu in the header.
 */
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('[data-collapse-toggle]').forEach((toggle) => {
    const targetId = toggle.getAttribute('data-collapse-toggle');
    const target = targetId ? document.getElementById(targetId) : null;

    if (!target) return;

    toggle.addEventListener('click', () => {
      const isNowHidden = target.classList.toggle('hidden');

      toggle.setAttribute('aria-expanded', String(!isNowHidden));
      toggle.querySelectorAll('[data-icon]').forEach((icon) => {
        icon.classList.toggle('hidden');
      });
    });
  });
});
