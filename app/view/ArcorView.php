<?php 
require_once 'libs/libs/Smarty.class.php';

class ArcorView{
     private $Smarty;

     public function __construct(){
        $this->Smarty = new Smarty();
        $this->Smarty->assign('BASE_URL', BASE_URL);
     }

    public function MostrarAñosArcor($Historia){
        var_dump($Historia);
        // $this->Smarty->assign('Historia',$Historia);
        // $this->Smarty->display('./TpTIO/templates/Introduccion');
    }

    public function MostrarRecursos(){
        $this->Smarty->display('recursos.tpl');
    }
}