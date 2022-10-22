<?php
class UsersModel {
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=arcor;charset=utf8','root','');
    }

    public function ObtenerUsuarioPorMail(String $mail)
    {
        $sql = $this->db->prepare("SELECT * FROM `usuarios` WHERE mail=?");
        $sql->execute(array($mail));
        $usuario = $sql->fetch(PDO::FETCH_OBJ);
        return $usuario;
    }
    
    public function RegistrarUsuario(String $mail, String $hash)
    {
        $sql = $this->db->prepare("INSERT INTO `usuarios`(`mail`, `hash`, `permisos`) VALUES (?,?,0)");
        $sql->execute(array($mail, $hash));
        $usuario = $sql->fetch(PDO::FETCH_OBJ);
        return $usuario;
        
    }
}