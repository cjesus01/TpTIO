<?php
require_once "./libs/smarty/Smarty.class.php";
class UsersView {
    private $smarty;
    public function __construct() {
        $this->smarty = new Smarty();
        $this->smarty->assign("BASE_URL", BASE_URL);
    }

    public function MostrarLogin()
    {
        $this->smarty->assign("title", "Login");
        $this->smarty->display("templates/login.tpl");
    }

    public function MostrarRegistrar()
    {
        $this->smarty->assign("title", "Registrarse");
        $this->smarty->display("templates/registrar.tpl");
    }
}