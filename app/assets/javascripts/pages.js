$(document).ready(function() {
  const $dropdown = $('#dropdown');

  function hideDropdown() {
    UIkit.dropdown($dropdown).hide();
  }

  $('.dropdown-link').click(hideDropdown);
});
