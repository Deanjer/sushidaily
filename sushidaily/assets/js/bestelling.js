console.log(sessionStorage.getItem("order"));

let order = sessionStorage.getItem("order").split(",");
console.log(order);

var product = window.location.search.split("?");
product.shift(0);


let index = []
let og_price = [];


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
        
        let total_price = 0;
        for (let i = 0; i < order.length; i++){
            
            find_item(order[i], results, i);
            og_price[i] = results[index[i]]["price"];
  
            console.log(total_price);
            total_price = total_price + results[index[i]]["price"];
            createOrderElement(i, results, og_price);
        }
        document.getElementById("total_price").innerHTML = Math.round(total_price * 100) / 100;
        document.getElementById("href").href = './betaaling.php?price=' + Math.round(parseFloat(document.getElementById("total_price").innerHTML) * 100) / 100;
    }}
    function find_item(name, results, k){
        for (let l = 0; l < results.length; l++){
          if (results[l]["name"] == name){
            index[k] = l;
            return true;
          }
        }
      }
function createOrderElement(i, results) {
    // Create the main container div
    const bestelling = document.createElement('div');
    bestelling.classList.add('bestelling');

    // Create the order div
    const order = document.createElement('div');
    order.classList.add('order');

    // Create the image div
    const image = document.createElement('img');
    image.classList.add('image');
    image.src = "./../assets/img/" + results[index[i]]["img_path"];
    order.appendChild(image);

    // Append order div to bestelling
    bestelling.appendChild(order);

    // Create the info div
    const info = document.createElement('div');
    info.classList.add('info');
    // info.textContent = results[index[i]]["line_disc"]

    // Create and append the title
    const title = document.createElement('h1');
    title.textContent = results[index[i]]["name"];
    info.appendChild(title);

    // Create the categorie div
    const categorie = document.createElement('div');
    categorie.classList.add('categorie');

    // Create and append the feature divs
    for (let j = 0; j < results[index[i]]["attributes"]["catagories"].length; j++){
      const featured = document.createElement("div");
      featured.classList.add("feature");
      featured.classList.add("lato-regular");
      featured.textContent = results[index[i]]["attributes"]["catagories"][j];
      categorie.appendChild(featured);
    }
    info.appendChild(categorie);

    // Create and append the omschrijving div
    const omschrijving = document.createElement('div');
    omschrijving.classList.add('omschrijving');

    const omschrijvingText = document.createElement('p');
    omschrijvingText.classList.add('lato-regular');
    omschrijvingText.textContent = results[index[i]]["line_disc"];
    omschrijving.appendChild(omschrijvingText);

    info.appendChild(omschrijving);

    // Append info div to bestelling
    bestelling.appendChild(info);

    // Create the prijs div
    const prijs = document.createElement('div');
    prijs.classList.add('prijs');

    // Create and append the price text
    const priceText = document.createElement('p');
    priceText.classList.add('lato-regular');
    priceText.textContent = "€" + results[index[i]]["price"];
    prijs.appendChild(priceText);

    // Create the hoeveelheid div
    const hoeveelheid = document.createElement('div');
    hoeveelheid.classList.add('hoeveelheid');

    // Create and append the min div
    const min = document.createElement('div');
    min.classList.add('min');

    const minText = document.createElement('h2');
    minText.textContent = '-';
    minText.addEventListener("click", () => {
      let current_number = parseInt(document.getElementsByClassName("number_of_items")[i].innerHTML)
      if (current_number == 0){
        console.log("its 0!!")
      } else {
      let nroi = parseInt(document.getElementsByClassName("number_of_items")[i].innerHTML) - 1;
      document.getElementsByClassName("number_of_items")[i].innerHTML = nroi;
      document.getElementById("total_price").innerHTML = Math.round((parseFloat(document.getElementById("total_price").innerHTML) - parseFloat(og_price[i])) * 100) / 100;
      document.getElementById("href").href = './betaaling.php?price=' + Math.round(parseFloat(document.getElementById("total_price").innerHTML) * 100) / 100;
      
      }
      console.log(typeof(og_price) + typeof(current_number) + typeof(total_price))
      console.log(total_price);
      results[index[i]]["price"] = og_price[i]*(current_number - 1);
      
    });
    min.appendChild(minText);

    hoeveelheid.appendChild(min);

    // Create and append the aantal div
    const aantal = document.createElement('div');
    aantal.classList.add('aantal');

    const aantalText = document.createElement('h2');
    aantalText.classList.add('lato-regular');
    aantalText.classList.add('number_of_items');
    aantalText.textContent = 1;
    aantal.appendChild(aantalText);

    hoeveelheid.appendChild(aantal);

    // Create and append the plus div
    const plus = document.createElement('div');
    plus.classList.add('plus');

    const plusText = document.createElement('h2');
    plusText.textContent = '+';
    plusText.addEventListener("click", () => {
      let nroi = parseInt(document.getElementsByClassName("number_of_items")[i].innerHTML) + 1;
      document.getElementsByClassName("number_of_items")[i].innerHTML = nroi;
      console.log(typeof(parseInt(document.getElementById("total_price").innerHTML)) + " hallo " + typeof(parseInt(og_price[i])));
      console.log(parseInt(document.getElementById("total_price").innerHTML))
      document.getElementById("total_price").innerHTML = Math.round((parseFloat(document.getElementById("total_price").innerHTML) + parseFloat(og_price[i])) * 100) / 100;
      document.getElementById("href").href = './betaaling.php?price=' + Math.round(parseFloat(document.getElementById("total_price").innerHTML) * 100) / 100;
    });
    plus.appendChild(plusText);

    hoeveelheid.appendChild(plus);

    // Append hoeveelheid div to prijs
    prijs.appendChild(hoeveelheid);

    // Append prijs div to bestelling
    bestelling.appendChild(prijs);

    // Create and append the rounded hr
    const hr = document.createElement('hr');
    hr.classList.add('rounded');

    // Append all to body or any specific container
    document.body.appendChild(bestelling);
    document.body.appendChild(hr);

    return true;
}

