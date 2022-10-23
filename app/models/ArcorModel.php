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
    }
?>