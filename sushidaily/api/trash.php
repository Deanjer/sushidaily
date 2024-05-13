public function create(array $data){
        $sql = "INSERT INTO products_english (name, line_disc, price, attributes, menu, drink, catagory, warm, pieces, img_path, suggestions)
                VALUES (:name, :line_disc, :price, :attributes, :menu, :dink, :catagory, :warm, :pieces, :img_path, :suggestions)";

        $stmt = $this->conn->prepare($sql);
        $stmt-> bindValue(":name", $data["name"], PDO::PARAM_STR);
        $stmt-> bindValue(":line_disc", $data["line_disc"], PDO::PARAM_STR);
        $stmt-> bindValue(":price", $data["price"], PDO::PARAM_INT);
        
        
         
    }

