<?php
require_once("Database.php");

class Contactos{
    private $database;
    private $smarty;

    function __construct($smarty){
        $this->database= new Database();
        // $this->database->habilita_debug();
        $this->smarty= $smarty;
    }

    function index($data=[]){
        $this->smarty->assign("data_tabla", $this->getContactos());
        $this->smarty->display(TEMPLATESF."index.tpl");
    }

    function getContactos($data=[]){
        $sql = "SELECT * FROM contacto";
        $result = $this->database->consulta($sql);
        if($result){
            return $result;
        }
    }

    function getGrupo(){
        $sql = "SELECT * FROM grupo_contacto";
        $result = $this->database->consulta($sql);
        if($result){
            return $result;
        }
    }

    function editarContacto($id=""){
        $sql = "SELECT * FROM contacto WHERE id=$id";
        $result = $this->database->consulta($sql)[0];
        return $result;
    }

    function actualizaContacto($post=[]){
        $datos['nombre'] = $post['nombre'];
        $datos['celular'] = $post['celular'];
        $datos['email'] = $post['email'];
        $datos['grupo'] = $post['grupo'];

        $result = $this->database->updateData("contacto", $datos, 'id='.$post['id']);
        if($result){
            return $result;
        }
    }

    function eliminaContacto($data=[]){
        $sql = "DELETE FROM contacto WHERE id=".$data['id'];
        $result = $this->database->consulta($sql);
        if($result){
            echo $result;
        }
    }

    function insertContacto($post=[]){
        $result = $this->database->insertData("contacto", $post);
        if($result){
            echo true;
        }
    }

    function inserData(){
        $this->smarty->assign("grupo", $this->getGrupo());
        $this->smarty->display(TEMPLATESF."agregar.tpl");
    }
}