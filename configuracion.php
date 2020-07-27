<?php

@define("RAIZ", __DIR__."/");
@define("SRC", RAIZ."src/");
@define("TEMPLATESF", SRC."templates/core/");
@define("CACHE", SRC."templates/");

@define("TEMPLATES", RAIZ."templates/");

@define("VENDOR", RAIZ."vendor/");
@define("SMARTY", RAIZ."smarty/libs/");
@define("LIBS_VARIAS", RAIZ."libs_varias/");
@define("TITLE", "hola mundo es prueba");

@define("DBHOST", "localhost");
@define("DBUSER", "root");
@define("DBPASS", "");
@define("DBNAME", "directorio");
@define("DB_DRIVER", "mysqli");


@define('ADODB', LIBS_VARIAS.'adodb-php/');
require_once(ADODB.'adodb.inc.php');

require SMARTY."Smarty.class.php" ;

$smarty = new Smarty;
$smarty->template_dir = SRC."templates";
$smarty->compile_dir  = RAIZ."cache";
$smarty->config_dir = SMARTY."configs";
$smarty->cache_dir = SMARTY."cache";

