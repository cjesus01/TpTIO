<?php
    class ArcorModel{
        private $db;

        public function __construct(){
            $this->db=$this->Conexion();
        }
        public function Conexion(){
            $db= new PDO('mysql:host=localhost;
                        dbname=arcor;charset=utf8',
                        'root','');
            return $db;
        }
        public function ObtenerAñosArcor(){
            $ArcorHistoria=$this->db->prepare("SELECT * FROM historia");
            $ArcorHistoria->execute();
            $Historia=$ArcorHistoria->fetchAll(PDO::FETCH_OBJ);
            return $Historia;
        }
        public function obtenerRecursos(){
            $ArcorRecursos=$this->db->prepare("SELECT * FROM recursos");
            $ArcorRecursos->execute();
            $Recursos=$ArcorRecursos->fetchAll(PDO::FETCH_OBJ);
            return $Recursos;
        }
        public function insertarInfoAplicante($nombre, $email,$dni, $curriculum){
            $hola = $this->db->prepare("INSERT INTO `cvs`(`id`, `nombre`, `email`, `dni`, `curriculum`) VALUES (?,?,?,?,?)");
            $hola->execute(['?', $nombre, $email, $dni, $curriculum]);
        }
        public function EliminarHistoria($id){
            $query=$this->db->prepare("DELETE FROM historia WHERE id=?");
            $query->execute([$id]);
        }
        public function ObtenerUnSuceso($id){
            $query=$this->db->prepare("SELECT * FROM historia WHERE id=?");
            $query->execute([$id]);
            $suceso=$query->fetch(PDO::FETCH_OBJ);
            return $suceso;
        }
        public function ModificarSuceso($id,$suceso,$anio){
            $query=$this->db->prepare("UPDATE historia SET `anio`='$anio', `suceso`='$suceso' WHERE id=?");
            $query->execute([$id]);
        }
        public function AgregarSuceso($suceso,$anio){
            $query=$this->db->prepare("INSERT INTO historia(anio,suceso) VALUES (?,?)");
            $query->execute([$anio,$suceso]);
        }
        public function TraerProductos(){
            $query=$this->db->prepare("SELECT * FROM productos");
            $query->execute();
            $productos=$query->fetchAll(PDO::FETCH_OBJ);
            return $productos;
        }
    }
?>