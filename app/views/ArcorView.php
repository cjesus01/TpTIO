<?php 
require_once 'libs/smarty/Smarty.class.php';
require_once 'app/helpers/AuthHelper.php';

class ArcorView{
     private $smarty;
     private $helper;

     public function __construct(){
        $this->smarty = new Smarty();
        $this->smarty->assign('BASE_URL', BASE_URL);
        $this->helper = new AuthHelper();
     }

    public function MostrarAñosArcor($HistoriaArcor){
        $this->smarty->assign('Historia',$HistoriaArcor);
        $this->smarty->assign('title','Introduccion');
        $this->smarty->display('./templates/introduccion.tpl');
    }
    public function MostrarRecursos($recursos){
        $this->smarty->assign("recursos", $recursos);
        $this->smarty->display("recursos.tpl");
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
    public function MostrarEstadoSolicitud($error = null){
        if (isset($error)){
            $this->smarty->assign('error','se ha producido un error');
            $this->smarty->display('solicitud.tpl');
        }
        else{
            $this->smarty->display('solicitud.tpl');
        }
    }
    public function ShowSuccess($mensaje){
        $this->smarty->assign('title', 'Borrar suceso');
        $this->smarty->assign('mensaje',$mensaje);
        $this->smarty->display('./templates/Success.tpl');
    }
    public function MostrarFormularioModificar($anio,$suceso,$id){
        $this->smarty->assign('title','Modificar');
        $this->smarty->assign('id',$id);
        $this->smarty->assign('suceso',$suceso);
        $this->smarty->assign('anio',$anio);
        $this->smarty->display('./templates/FormModificarHistoria.tpl');
    }
    public function FomularioAgregarSuceso(){
        $this->smarty->assign('title','Agregar');
        $this->smarty->display('./templates/FormularioAgregarSuceso.tpl');
    }
    public function MostrarProducto($productos, $id = NULL){
        $this->smarty->assign('title','Productos');
        $this->smarty->assign('productos', $productos);
        $this->smarty->display('./templates/productos.tpl');
    }
}