
product = window.location.search.split("?");
product.shift(0);
console.log(product[0]);

call();
async function call(){
    const data = {
      "price" : 8.5,
      "contents" : "sushi_drink",
      "takeaway" : "false"
    }
    const res = await fetch('http://localhost:3403/sushidaily/sushidaily/api/products/' + product[0], {
    method: "GET",
    headers: {
     
    },
    // body: JSON.stringify(data)     
    })
    var results = await res.json();
    console.log(results);
  }