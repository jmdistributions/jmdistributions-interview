<?php

    class Productos_model{
        private $db;
        private $productos;

        public function __construct(){
            $this->db = Conectar::conexion();
            $this->productos = array();
        }

        public function get_productos(){
            $sql = "SELECT * FROM productos";
            $resultado = $this->db->query($sql);
            while($row = $resultado->fetch_assoc()){
                $this->productos[] = $row;
            }
            return $this->productos;
        }

        public function insertar($nombre, $categoria, $precio, $compra, $descripcion, $unidad_medida){
            $resultado = $this->db->query("INSERT INTO productos (nombre, categoria, precio, compra, descripcion, unidad_medida) VALUES ('$nombre', '$categoria', '$precio', '$compra', '$descripcion', '$unidad_medida')");
        }

        public function modificar($id, $nombre, $categoria, $precio, $compra, $descripcion, $unidad_medida){		
			$resultado = $this->db->query("UPDATE productos SET nombre='$nombre', categoria='$categoria', precio='$precio', compra='$compra', descripcion='$descripcion' , unidad_medida='$unidad_medida' WHERE id = '$id'");			
		}

        public function eliminar($id){		
			$resultado = $this->db->query("DELETE FROM productos WHERE id = '$id'");		
		}

        public function get_producto($id){
			$sql = "SELECT * FROM productos WHERE id='$id' LIMIT 1";
			$resultado = $this->db->query($sql);
			$row = $resultado->fetch_assoc();

			return $row;
		}
    }

?>