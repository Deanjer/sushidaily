<?php

class ProductGateway{
    private PDO $conn;

    public function __construct(Database $database)
    {
        $this->conn = $database->getConnection();
    }

    public function getAll(): array{
        $sql = "SELECT *
                FROM products_english";
        
        $stmt = $this->conn->query($sql);

        $data = [];

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $row['menu'] = (bool) $row['menu'];
            $row['drink'] = (bool) $row['drink'];
            $row['warm'] = (bool) $row['warm'];
            $row['attributes'] = json_decode($row['attributes']);
            $row['suggestions'] = json_decode($row['suggestions']);
            $data[] = $row;
        }
        return $data;
    }
    public function get(string $name){
        $name =explode("_", $name);
        switch (count($name)){
            case 1:
                $name = $name[0];
                break;
            case 2:
                $name = $name[0] . " " . $name[1];
                break;
            case 3:
                $name = $name[0] . " " . $name[1] . " " . $name[2];
                break;
            case 4:
                $name = $name[0] . " " . $name[1] . " " . $name[2] . " " . $name[3];
                break;
        };

        $sql = "SELECT * 
                FROM products_english
                WHERE name = :name";
        $stmt = $this->conn->prepare($sql);

        $stmt->bindValue(":name", $name, PDO::PARAM_STR);

        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $row['menu'] = (bool) $row['menu'];
        $row['drink'] = (bool) $row['drink'];
        $row['warm'] = (bool) $row['warm'];
        $row['attributes'] = json_decode($row['attributes']);
        $row['suggestions'] = json_decode($row['suggestions']);
        $data[] = $row;
        return $data;
            
    }

    public function getCat($catagory){
        $catagory =explode("_", $catagory);
        switch (count($catagory)){
            case 1:
                $catagory = $catagory[0];
                break;
            case 2:
                $catagory = $catagory[0] . " " . $catagory[1];
                break;
        };
        $sql = "SELECT * 
                FROM products_english
                WHERE attributes LIKE :catagory";
        $stmt = $this->conn->prepare($sql);

        $stmt->bindValue(":catagory", "%" . $catagory . "%", PDO::PARAM_STR);

        $stmt->execute();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $row['menu'] = (bool) $row['menu'];
            $row['drink'] = (bool) $row['drink'];
            $row['warm'] = (bool) $row['warm'];
            $row['attributes'] = json_decode($row['attributes']);
            $row['suggestions'] = json_decode($row['suggestions']);
            $data[] = $row;
        }
        return $data;

    }
}

?>