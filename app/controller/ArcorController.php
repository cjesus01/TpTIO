<?php
    require_once './app/model/ArcorModel.php';
    require_once './app/view/ArcorView.php';

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
    }