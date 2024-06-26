<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../assets/css/menupage.css">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <header>
            <img src="./../assets/img/logo-secondary-blue.svg" alt="" style="max-width: 360px">
        </header>
        <div class="center">
            <div class="sidebar">
                <ul>
                    <a href="http://localhost:3000/sushidaily/sushidaily/public/menupage.php?Cold"><li>Cold</li></a>
                    <a href="http://localhost:3000/sushidaily/sushidaily/public/menupage.php?Meat"><li>Meat</li></a>
                    <a href="http://localhost:3000/sushidaily/sushidaily/public/menupage.php?Shellfish"><li>Shellfish</li></a>
                    <a href="http://localhost:3000/sushidaily/sushidaily/public/menupage.php?Heat_up"><li>Heat up</li></a>
                </ul>
                <div class="exit">
                    <p class="lato-bold">Stop order</p>
                </div>
            </div>
            <div class="menu-container">
                <div class="menu-header">
                    <h2 class="">Warm meals</h2>
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24" class="shopping-cart">
                        <path d="M280-80q-33 0-56.5-23.5T200-160q0-33 23.5-56.5T280-240q33 0 56.5 23.5T360-160q0 33-23.5 56.5T280-80Zm400 0q-33 0-56.5-23.5T600-160q0-33 23.5-56.5T680-240q33 0 56.5 23.5T760-160q0 33-23.5 56.5T680-80ZM246-720l96 200h280l110-200H246Zm-38-80h590q23 0 35 20.5t1 41.5L692-482q-11 20-29.5 31T622-440H324l-44 80h480v80H280q-45 0-68-39.5t-2-78.5l54-98-144-304H40v-80h130l38 80Zm134 280h280-280Z" fill="#001E42" />
                    </svg>
                </div>
                <div class="menu">
                </div>
            </div>
        </div>
    </div>
    <div class="popup-overlay" id="popupOverlay">
        <div class="popup">
            <div class="popup-header">
                <h3>Try this</h3>
                <span class="close-popup lato-regular" id="closePopup">No thanks</span>
            </div>
            <div class="popup-container">
                <div class="popup-item-container">
                    <div class="popup-product-img">

                    </div>
                    <h2 id="item_1">Title</h2>
                    <div class="popup-info-container">

                        <p class="lato-regular suggestion_price">€7,99</p>
                        <div class="add-button">
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15 7H9V1C9 0.734784 8.89464 0.48043 8.70711 0.292893C8.51957 0.105357 8.26522 0 8 0C7.73478 0 7.48043 0.105357 7.29289 0.292893C7.10536 0.48043 7 0.734784 7 1V7H1C0.734784 7 0.48043 7.10536 0.292893 7.29289C0.105357 7.48043 0 7.73478 0 8C0 8.26522 0.105357 8.51957 0.292893 8.70711C0.48043 8.89464 0.734784 9 1 9H7V15C7 15.2652 7.10536 15.5196 7.29289 15.7071C7.48043 15.8946 7.73478 16 8 16C8.26522 16 8.51957 15.8946 8.70711 15.7071C8.89464 15.5196 9 15.2652 9 15V9H15C15.2652 9 15.5196 8.89464 15.7071 8.70711C15.8946 8.51957 16 8.26522 16 8C16 7.73478 15.8946 7.48043 15.7071 7.29289C15.5196 7.10536 15.2652 7 15 7Z" fill="white" />
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="popup-item-container">
                    <div class="popup-product-img">

                    </div>
                    <h2 id="item_2">Title</h2>
                    <div class="popup-info-container">

                        <p class="lato-regular suggestion_price">€7,99</p>
                        <div class="add-button">
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15 7H9V1C9 0.734784 8.89464 0.48043 8.70711 0.292893C8.51957 0.105357 8.26522 0 8 0C7.73478 0 7.48043 0.105357 7.29289 0.292893C7.10536 0.48043 7 0.734784 7 1V7H1C0.734784 7 0.48043 7.10536 0.292893 7.29289C0.105357 7.48043 0 7.73478 0 8C0 8.26522 0.105357 8.51957 0.292893 8.70711C0.48043 8.89464 0.734784 9 1 9H7V15C7 15.2652 7.10536 15.5196 7.29289 15.7071C7.48043 15.8946 7.73478 16 8 16C8.26522 16 8.51957 15.8946 8.70711 15.7071C8.89464 15.5196 9 15.2652 9 15V9H15C15.2652 9 15.5196 8.89464 15.7071 8.70711C15.8946 8.51957 16 8.26522 16 8C16 7.73478 15.8946 7.48043 15.7071 7.29289C15.5196 7.10536 15.2652 7 15 7Z" fill="white" />
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="popup-item-container">
                    <div class="popup-product-img">

                    </div>
                    <h2 id="item_3">Title</h2>
                    <div class="popup-info-container">
                        <p class="lato-regular suggestion_price">€7,99</p>
                        <div class="add-button">
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15 7H9V1C9 0.734784 8.89464 0.48043 8.70711 0.292893C8.51957 0.105357 8.26522 0 8 0C7.73478 0 7.48043 0.105357 7.29289 0.292893C7.10536 0.48043 7 0.734784 7 1V7H1C0.734784 7 0.48043 7.10536 0.292893 7.29289C0.105357 7.48043 0 7.73478 0 8C0 8.26522 0.105357 8.51957 0.292893 8.70711C0.48043 8.89464 0.734784 9 1 9H7V15C7 15.2652 7.10536 15.5196 7.29289 15.7071C7.48043 15.8946 7.73478 16 8 16C8.26522 16 8.51957 15.8946 8.70711 15.7071C8.89464 15.5196 9 15.2652 9 15V9H15C15.2652 9 15.5196 8.89464 15.7071 8.70711C15.8946 8.51957 16 8.26522 16 8C16 7.73478 15.8946 7.48043 15.7071 7.29289C15.5196 7.10536 15.2652 7 15 7Z" fill="white" />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>

<script src="./../assets/js/api.js"></script>
<!-- <script src="./../assets/js/popup.js"></script> -->

</html>
