<?php 
require_once './app/controller/ArcorController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(isset($_GET['action']) && !empty($_GET['action'])){
    $action=$_GET['action'];
}
else{
    $action='Introduccion';
}

$params= explode ('/',$action);
$controller=new ArcorController();

switch($params[0]){
    case 'Introduccion':
        $controller->Introduccion();
        if($params[1]){
            if($params[1]==='Objetivos'){
            $controller->Objetivos();
            }
            else{
                $controller->Introduccion('No se ha podido acceder a la pagina, intentelo nuevamente');
            }
        }
        else{
            $controller->Introduccion('No se ha podido acceder a la pagina, intentelo nuevamente');
        }
        break;
    case 'Recursos':
        $controller->Recursos();
        break;
    default:
       // $controller->Error('Error 404');
}