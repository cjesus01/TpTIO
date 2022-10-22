<?php
require_once "./app/views/UsersView.php";
require_once "./app/models/UsersModel.php";
require_once "./app/helpers/AuthHelper.php";
class UsersController {

    private $view;
    private $model;
    private $auth_helper;
    public function __construct() {
        $this->view = new UsersView();
        $this->model = new UsersModel();
        $this->auth_helper = new AuthHelper();
    }

    public function PaginaLogin()
    {
        $this->view->MostrarLogin();
    }
    public function PaginaRegistrar()
    {
        $this->view->MostrarRegistrar();
    }

    //validaciones
    public function Login()
    {
        if (
            !empty($_POST["mail"] && !empty($_POST["password"])) &&
            preg_match("/.+@.+/gs", $_POST["mail"]) && //se asegura de que mail se un mail valido
            strlen($_POST["password"]) >= 8 //la contraseña tiene que tener al menos 8 caracteres
        ) {
            $mail = $_POST["mail"];
            $contraseña = $_POST["password"];

            $this->auth_helper->Login($mail, $contraseña);
        } else {
            header("Location: ".BASE_URL."/login"); //contraseña y/o usuario no validos
            exit();
        }
    }

    public function Registrar()
    {
        if (
            !empty($_POST["mail"] && !empty($_POST["password"])) &&
            preg_match("/.+@.+/", $_POST["mail"]) && //se asegura de que mail se un mail valido
            strlen($_POST["password"]) >= 8 //la contraseña tiene que tener al menos 8 caracteres
        ) {
            $mail = $_POST["mail"];
            $hash = password_hash($_POST["password"], PASSWORD_DEFAULT);
            $this->model->RegistrarUsuario($mail, $hash);
        } else {
            header("Location: ".BASE_URL."/regitrarse"); //usuario y/o contraseña no validos
            exit();
        }
    }
}