<?php 
require_once 'libs/libs/Smarty.class.php';

class ArcorView{
     private $smarty;

     public function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('BASE_URL', BASE_URL);
     }

    public function MostrarAñosArcor($HistoriaArcor){
        $this->smarty->assign('Historia',$HistoriaArcor);
        $this->smarty->assign('title','Introduccion');
        $this->smarty->display('./templates/introduccion.tpl');
    }
    public function MostrarRecursos(){
        $this->smarty->display('./templates/recursos.tpl');
    }
    public function MostrarObjetivos(){
        $this->smarty->assign('title','Objetivos');
        $this->smarty->display('./templates/objetivosymetas.tpl');
    }
    public function MostrarError($mensaje){
        $this->smarty->assign('title', 'Error');
        $this->smarty->assign('mensaje', $mensaje);
        $this->smarty->display('./templates/error.tpl');    
    }
    public function MostrarInformacion(){
        $this->smarty->assign('title','Informacion');
        $this->smarty->display('./templates/informacion.tpl');  
    }
}