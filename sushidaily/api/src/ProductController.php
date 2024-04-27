<?php


class ProductController
{
    public function __construct(private ProductGateway $gateway)
    {
        
    }
    public function processRequest(string $method, ?string $name): void
    {
        if ($name){
            $this->processResourceRequest($method, $name);
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
}
?>