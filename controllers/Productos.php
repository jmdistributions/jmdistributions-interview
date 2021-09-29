<?php

    class ProductosController {

        public function __construct(){
			require_once "models/ProductosModel.php";
		}

        public function index(){
            //require_once 'models/ProductosModel.php';
            $productos = new Productos_model();
            $data["titulo"] = "Productos";
            $data["productos"] = $productos->get_productos();

            require_once 'views/productos/productos.php';
        }

        public function nuevo(){			
			$data["titulo"] = "Productos";
			require_once "views/productos/productos_nuevo.php";
		}

        public function guarda(){
			
			$nombre = $_POST['nombre'];
			$categoria = $_POST['categoria'];
			$precio = $_POST['precio'];
			$compra = $_POST['compra'];
			$descripcion = $_POST['descripcion'];
            $unidad_medida = $_POST['unidadMedida'];
			
			$productos = new Productos_model();
			$productos->insertar($nombre, $categoria, $precio, $compra, $descripcion, $unidad_medida);
			$data["titulo"] = "Productos";
			$this->index();
		}

        public function modificar($id){
			
			$productos = new Productos_model();
			
			$data["id"] = $id;
			$data["productos"] = $productos->get_producto($id);
			$data["titulo"] = "Productos";
			require_once "views/productos/productos_modifica.php";
		}

        public function actualizar(){

			$id = $_POST['id'];
			$nombre = $_POST['nombre'];
			$categoria = $_POST['categoria'];
			$precio = $_POST['precio'];
			$compra = $_POST['compra'];
			$descripcion = $_POST['descripcion'];
            $unidadMedida = $_POST['unidadMedida'];

			$productos = new Productos_model();
			$productos->modificar($id, $nombre, $categoria, $precio, $compra, $descripcion, $unidadMedida);
			$data["titulo"] = "Productos";
			$this->index();
		}

        public function eliminar($id){
			
			$productos = new Productos_model();
			$productos->eliminar($id);
			$data["titulo"] = "Productos";
			$this->index();
		}
    }

?>