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
    }