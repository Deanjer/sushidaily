<?php


class ProductController
{
    public function __construct(private ProductGateway $gateway)
    {
        
    }
    public function processRequest(string $method, ?string $name): void
    {
        if ($name){
            if ($name == "Raw_Fish" || "Cold" || "Vegetarian" || "Meat" || "Shellfish" || "Heat_up" || "Vegan"){
               $this->catagoryRequest($name);
            } else {
            $this->processResourceRequest($method, $name);
            }
        } else {
            $this->processCollectionRequest($method);
        }
    }

    private function processResourceRequest(string $method, string $name): void
    {
        $product = $this->gateway->get($name);
        echo json_encode($product);
    }
    private function processCollectionRequest(string $method): void
    {
        
        switch($method){
            case 'GET':
                echo json_encode($this->gateway->getAll());
                break;
            case 'POST':
                echo "POST is not yet supported";
        }
    }
    private function catagoryRequest(string $catagory){
        echo json_encode($this->gateway->getCat($catagory));
    }
}
?>