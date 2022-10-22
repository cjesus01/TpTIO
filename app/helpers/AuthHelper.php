<?php
require_once "./app/models/UsersModel.php";
class AuthHelper {
    private $model;
    public function __construct() {
        $this->model = new UsersModel();
    }

    public function Login(String $mail, String $password)
    {
        $user = $this->model->ObtenerUsuarioPorMail($mail);
        if ($user === false) { //usuario no valido
            header("Location: ".BASE_URL."/login");
            exit();
        }
        if(password_verify($password, $user->hash)) {
            session_start();
            /*
            Contenidos de $_SESSION:
            admin: es el usuario actual un administrador
            logeado: esta el usuario logeado
             */
            if ($user->permisos === 1) {
                $_SESSION["admin"] = true;
            } else {
                $_SESSION["logeado"] = false;
            }
            $_SESSION["logeado"] = true;
        } else { //contraseña no valida
            header("Location: ".BASE_URL."/login");
            exit();
        }
    }
}