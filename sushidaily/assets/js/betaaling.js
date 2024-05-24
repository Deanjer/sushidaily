console.log(sessionStorage.getItem("order").replace(/,/g, "_"));

call()
async function call(){
    const data = {
      "price" : parseFloat(document.getElementById("price").innerHTML),
      "contents" : sessionStorage.getItem("order").replace(/,/g, "_"),
      "takeaway" : "false"
    }
      const res = await fetch('http://localhost:3000/sushidaily/sushidaily/api/products', {
        method: "post",
        headers: {
         
        },
        body: JSON.stringify(data)   
        })
        var results = await res.json();
        console.log(results);

    for (let i  = 0; i < results.length; i++){
    build(i, results);
    }
  }