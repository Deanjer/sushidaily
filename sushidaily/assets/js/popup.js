document.addEventListener('DOMContentLoaded', function () {
    const addButtons = document.querySelectorAll('.add-button');
    const popupOverlay = document.getElementById('popupOverlay');
    const closePopup = document.getElementById('closePopup');

    addButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            popupOverlay.style.display = 'flex'; // Show the popup
        });
    });

    closePopup.addEventListener('click', function () {
        popupOverlay.style.display = 'none'; // Hide the popup when close button is clicked
    });
});