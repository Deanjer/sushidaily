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
}

?>