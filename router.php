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
        if(isset($params[1])){
            if($params[1]==='Objetivos'){
            $controller->Objetivos();
            }
            else{
                $controller->Introduccion();
            }
        }
        else{
            $controller->Introduccion();
        }
        break;
    case 'Recursos':
        $controller->Recursos();
        break;
    case 'Informacion':
        $controller->Informacion();
    default:
       // $controller->Error('Error 404');
}