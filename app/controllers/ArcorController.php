<?php
    require_once './app/models/ArcorModel.php';
    require_once './app/views/ArcorView.php';

    class ArcorController{
        private $model;
        private $view;
        public function __construct(){
            $this->model= new ArcorModel();
            $this->view = new ArcorView();
        }
        public function Introduccion(){
            $HistoriaArcor=$this->model->ObtenerAñosArcor();
            $this->view->MostrarAñosArcor($HistoriaArcor);
        }
        public function Recursos(){
            $recursos = $this->model->obtenerRecursos();
            $this->view->MostrarRecursos($recursos);
        }
        public function Objetivos(){
            $this->view->MostrarObjetivos();
        }
        public function ShowError($mensaje){
            $this->view->MostrarError($mensaje);
        }
        public function Informacion(){
            $this->view->MostrarInformacion();
        }

        public function Solicitud(){
            if (!empty($_POST ['name']) && !empty($_POST ['email']) && !empty($_POST ['dni']) && !empty($_POST ['curriculum'])){
            $nombre = $_POST ['name'];
            $email = $_POST ['email'];
            $dni = $_POST ['dni'];
            $dni =(int) $dni;
            $curriculum = $_POST["curriculum"];

            $this->model->insertarInfoAplicante($nombre, $email, $dni, $curriculum);
            $this->view->MostrarEstadoSolicitud();
            }
            else{
                $this->view->MostrarEstadoSolicitud("error");
            }
        }
<<<<<<< HEAD
=======
        public function EliminarHistoria($id){
            $this->model->EliminarHistoria($id);
            $this->view->ShowSuccess('Se eliminó con éxito');
        }
        public function FormularioModificarHistoria($id){
            $acontecimineto=$this->model->ObtenerUnSuceso($id);
            $anio=$acontecimineto->anio;
            $suceso=$acontecimineto->suceso;
            $this->view->MostrarFormularioModificar($anio,$suceso,$id);
        }
        public function ModificarHistoria($id){
            if(isset($_POST['anio']) && isset($_POST['suceso']) 
                && !empty($_POST['anio']) && !empty($_POST['suceso'])){
                    $suceso=$_POST['suceso'];
                    $anio=$_POST['anio'];
                    $this->model->ModificarSuceso($id,$suceso,$anio);
                    $this->view->ShowSuccess('Se modificó con éxito');
                }
            else{
                echo 'error';
            }
        }
        public function FormularioAgregarHistoria(){
            $this->view->FomularioAgregarSuceso();
        }
        public function AgregarSuceso(){
            if(isset($_POST['anio']) && isset($_POST['suceso']) 
                && !empty($_POST['anio']) && !empty($_POST['suceso'])){
                    $suceso=$_POST['suceso'];
                    $anio=$_POST['anio'];
                    $this->model->AgregarSuceso($suceso,$anio);
                    $this->view->ShowSuccess('Se agregó con éxito');
                }
                else{
                    echo 'Error';
                }
        }
>>>>>>> a875e25562660b6523e77bba6ca77e67a56c8e18
    }