<?php 

ini_set('error_reporting', E_ALL);
ini_set('display_errors', '0');

require_once("configuracion.php");
require_once("./php/Contactos.php");
$PARAMS = array_merge($_POST, $_GET);

$funcion= isset($PARAMS['funcion'])? $PARAMS['funcion']:"index";
$contactos = new Contactos($smarty);

$contactos->$funcion($PARAMS);
