# sushidaily


## API guide

### to GET:

```**/products``` Gives All products<br>
```**/procucts/Salmon_Nigiri``` Gives only the Salmon Nigiri<br>
```**/products/*catagory*``` Gives all products with that catagory.<br>

catagories are:
- Raw_Fish
- Cold
- Vegetarian
- Meat
- Shellfish
- Heat_up
- Vegan

### to POST

use method POST and a body like: 
```
const data = {
    "price" : [price],
    "contents" : "[item 1]_[item 2]_ ..."
    "takeaway" : "[value]" // yes in a string
}

body : JSON.stringify(data)
```

