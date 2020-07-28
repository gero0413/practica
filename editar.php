<?php

require_once("configuracion.php");

include_once "./php/Contactos.php";
$contactos = new Contactos($smarty);

$smarty->assign("grupo", $contactos->getGrupo());
$smarty->assign("data_editar", $contactos->editarContacto($_GET['id']));
$smarty->display(TEMPLATESF."editar.tpl");
