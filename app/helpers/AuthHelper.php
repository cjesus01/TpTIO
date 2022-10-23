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
            if (session_status() !== PHP_SESSION_ACTIVE) {//compruebo si la sesion no esta activa
                session_start();
            }
            /*
            Contenidos de $_SESSION:
            admin: es el usuario actual un administrador
            logeado: esta el usuario logeado
             */
            if ($user->permisos === 1) {
                $_SESSION["admin"] = true;
            } else {
                $_SESSION["admin"] = false;
            }
            $_SESSION["logeado"] = true;
        } else { //contraseña no valida
            header("Location: ".BASE_URL."/login");
            exit();
        }
    }

    public function EstaLogeado()
    {
        if (session_status() !== PHP_SESSION_ACTIVE) {//compruebo si la sesion no esta activa
            session_start();
        }
        if (isset($_SESSION["logeado"]) && is_bool($_SESSION["logeado"])) {
            return $_SESSION["logeado"];
        }
        return false;
    }
    public function EsAdmin()
    {
        if (session_status() !== PHP_SESSION_ACTIVE) {//compruebo si la sesion no esta activa
            session_start();
        }
        if (
            isset($_SESSION["logeado"]) && is_bool($_SESSION["logeado"]) &&
            isset($_SESSION["admin"]) && is_bool($_SESSION["admin"]) &&
            $this->EstaLogeado() === true
        ) {
            return $_SESSION["admin"];
        }
        return true;
    }
}