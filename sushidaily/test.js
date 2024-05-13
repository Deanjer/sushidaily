async function call(){
  const data = {
    "price" : 8.5,
    "contents" : "sushi_drink",
    "takeaway" : "false"
  }
  const res = await fetch('http://localhost:3000/sushidaily/sushidaily/api/products/', {
  method: "GET",
  headers: {
    
  },
  // body: JSON.stringify(data)     
  })
  var results = await res.json();
  console.log(results);
}