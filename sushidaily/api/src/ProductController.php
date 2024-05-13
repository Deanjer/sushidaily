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
                $data =  (array) json_decode(file_get_contents("php://input"), true);

                $errors = $this->getValidationErrors($data);

                if (! empty($errors)){
                    http_response_code(422);
                    echo json_encode(["errors" => $errors]);
                    break;
                }

                $id = $this->gateway->create($data);
                http_response_code(201);
                echo json_encode([
                    "message" => "product created",
                    "id" => $id
                ]);
                break;
            default:
                http_response_code(405);
                header("Allow: GET, POST");
        }
    }
    private function catagoryRequest(string $catagory){
        echo json_encode($this->gateway->getCat($catagory));
    }

    private function getValidationErrors(array $data):array {
        $errors = [];
        if (empty($data["contents"])){
            $errors[] = "Content is required";
        }
        if (empty($data["price"])){
            $errors[] = "Price is required";
        } else{ 
            if (filter_var($data["price"], FILTER_VALIDATE_FLOAT) === false){
                $errors[] = "Price should be a number";
            }
        }
        if (empty($data["takeaway"])){
            $errors[] = "Takeaway Boolean is required";
        }
        return $errors;
    }
}
?>