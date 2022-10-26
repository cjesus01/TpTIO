<?php 
require_once './app/controllers/ArcorController.php';
require_once './app/controllers/UsersController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(isset($_GET['action']) && !empty($_GET['action'])){
    $action=$_GET['action'];
}
else{
    $action='Introduccion';
}

$params= explode ('/',$action);
$controller=new ArcorController();
$usuarios_controller = new UsersController();

switch($params[0]){
    case 'Introduccion':
        if(isset($params[1])){
            if($params[1]==='Objetivos'){
            $controller->Objetivos();
            }
            else if($params[1]==='EliminarHistoria'){
                $controller->EliminarHistoria($params[2]);
            }
            else if($params[1]==='FormularioModificarHistoria'){
                $controller->FormularioModificarHistoria($params[2]);
            }
            else if($params[1]==='ModificarHistoria'){
                $controller->ModificarHistoria($params[2]);
            }
            else if($params[1]==='Agregar'){
                $controller->FormularioAgregarHistoria();
            }
            else if($params[1]==='AgregarSuceso'){
                $controller->AgregarSuceso();
            }
            else{
                $controller->Introduccion();
            }
        }
        else{
            $controller->Introduccion();
        }
        break;
    case 'Productos':
            $controller->MostrarProductos();
    case 'Recursos':
        if (isset($params[1]) && $params[1]=="solicitud"){
            $controller->Solicitud();
        }
        else{
        $controller->Recursos();
        }
        break;
    case 'Informacion':
        $controller->Informacion();
        break;
    case 'login':
        $usuarios_controller->PaginaLogin();
        break;
    case 'registrarse':
        $usuarios_controller->PaginaRegistrar();
        break;
    case 'validar_usuario':
        $usuarios_controller->Login();
        break;
    case 'registrar':
        $usuarios_controller->Registrar();
        break;
    default:
       // $controller->Error('Error 404');
}