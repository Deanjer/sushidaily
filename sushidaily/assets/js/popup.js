document.addEventListener('DOMContentLoaded', function () {
    const addButtons = document.querySelectorAll('.add-button');
    const popupOverlay = document.getElementById('popupOverlay');
    const closePopup = document.getElementById('closePopup');

    addButtons.forEach(function (button) {
        button.addEventListener('click', function () {
            const randomChance = Math.random();

            if (randomChance < 0.3) {
                popupOverlay.style.display = 'flex';
            }
            console.log(randomChance);
        });
    });

    closePopup.addEventListener('click', function () {
        popupOverlay.style.display = 'none'; 
    });

   
});