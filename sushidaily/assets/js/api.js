sessionStorage.clear();

var index = [];

var product = window.location.search.split("?");
product.shift(0);
console.log(product[0]);

call();
async function call(){
    const data = {
      "price" : 8.5,
      "contents" : "sushi_drink",
      "takeaway" : "false"
    }
    if (product[0]){
      const res = await fetch('http://localhost:3000/sushidaily/sushidaily/api/products/' + product[0], {
        method: "GET",
        headers: {
         
        },
        // body: JSON.stringify(data)     
        })
        var results = await res.json();
        console.log(results);
    } else {
      const res = await fetch('http://localhost:3000/sushidaily/sushidaily/api/products', {
        method: "GET",
        headers: {
         
        },
        // body: JSON.stringify(data)     
        })
        var results = await res.json();
        console.log(results);
    }

    for (let i  = 0; i < results.length; i++){
    build(i, results);
    }
  }

  function build(item, results){
    let menu_read = document.getElementsByClassName("menu")[0];
    //menu item create
    const menu_item = document.createElement("div");
    menu_item.classList.add("menu-item");
    menu_read.append(menu_item);

    let menu_item_read = document.getElementsByClassName("menu-item")[item];

    // product place holder image create
    const product_placeholder_img = document.createElement("div");
    product_placeholder_img.classList.add("product-placeholder-img");
    product_placeholder_img.textContent = "";
    menu_item_read.append(product_placeholder_img);

    let product_placeholder_img_read = document.getElementsByClassName("product-placeholder-img")[item];

    //add image
    const product_image = document.createElement("img");
    product_image.src = "./../assets/img/" + results[item]["img_path"];
    product_image.height = "100px";
    product_image.classList.add("product-image");
    product_placeholder_img_read.append(product_image);


    //menu title P element
    const menu_title = document.createElement("p");
    menu_title.classList.add("menu-title");
    menu_title.textContent = results[item]["name"];
    menu_item.append(menu_title);

    //menu description
    const menu_desc = document.createElement("p");
    menu_desc.classList.add("lato-regular");
    menu_desc.classList.add("menu-description");
    menu_desc.textContent = results[item]["line_disc"];
    menu_item.append(menu_desc);

    //featured
    for (let j = 0; j < results[item]["attributes"]["catagories"].length; j++){
      const featured = document.createElement("div");
      featured.classList.add("feature");
      featured.classList.add("lato-regular");
      featured.textContent = results[item]["attributes"]["catagories"][j];
      menu_item.append(featured);
    }
    

    //lower container
    const lower_container = document.createElement("div");
    lower_container.classList.add("lower-container");
    lower_container.textContent = "";
    menu_item.append(lower_container);

    let lower_container_read = document.getElementsByClassName("lower-container")[item];

    //price
    const price = document.createElement("p");
    price.classList.add("lato-regular");
    price.classList.add("price");
    price.textContent = "€" + results[item]["price"];
    lower_container_read.append(price);

    //add button
    const add_button = document.createElement("div");
    add_button.classList.add("add-button");
    add_button.addEventListener("click", () => {
      let check = sessionStorage.getItem("order");
      console.log(check);
      let current_storage = [sessionStorage.getItem("order")];
      if (check === null){
        current_storage = [results[item]["name"]];
      } else {
        current_storage.push(results[item]["name"]);
      }
      sessionStorage.setItem("order",current_storage);
      console.log("session: " + JSON.stringify(sessionStorage.getItem("order")));
      pop_up(item, results)});
    lower_container_read.append(add_button);

    let add_button_read = document.getElementsByClassName("add-button")[item];

    // add image
    const img = document.createElement("img");
    img.src = "./../assets/img/add.svg";
    add_button_read.append(img);
    
    return true;
  }


  function pop_up(item, results){
    const randomChance = Math.random();

            if (randomChance < 0.3) {
                popupOverlay.style.display = 'flex';
                
                // more JS Dom
                for (let k = 1; k < 4; k++){

                  document.getElementById("item_" + k).innerHTML = results[item]["suggestions"]["suggestions"][k - 1];
                  
                  let suggestion_img_read = document.getElementsByClassName("popup-product-img")[k - 1];
                  find_item(results[item]["suggestions"]["suggestions"][k - 1], results, k);
                  document.getElementsByClassName("suggestion_price")[k - 1].innerHTML = "€" + results[index[k]]["price"];

                  const img_suggestion = document.createElement("img");
                  img_suggestion.classList.add("suggestion-img");
                  img_suggestion.src = "./../assets/img/" + results[index[k]]["img_path"];
                  suggestion_img_read.append(img_suggestion);
                }
                
            }
  }
  closePopup.addEventListener('click', function () {
    popupOverlay.style.display = 'none'; 
});


function find_item(name, results, k){
  for (let l = 0; l < results.length; l++){
    if (results[l]["name"] == name){
      index[k] = l;
    }
  }
}