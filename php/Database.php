<?php

class Database {

    static private $_conexion;
    private $_debugdb = false;

    function __construct(){
        $this->ConexionAdodb();
    }

    public function ConexionAdodb() {
        self::$_conexion = ADONewConnection(DB_DRIVER);
        self::$_conexion->Connect(DBHOST, DBUSER, DBPASS, DBNAME);
        self::$_conexion->setFetchMode(ADODB_FETCH_ASSOC);
        self::$_conexion->Execute("SET NAMES 'utf8'");
    }


    function consulta($sql = "", $params = []) {
        $result = self::$_conexion->Execute($sql, $params);
        return $result->GetArray();
    }

    function updateData($tabla = "", $record = [], $where = '') {
        return self::$_conexion->autoExecute($tabla, $record, "UPDATE", $where);
    }

    function insertData($tabla = "", $record = []) {
        return self::$_conexion->autoExecute($tabla, $record, "INSERT");
    }
    
    function habilita_debug($debug = true) {
        $this->_debugdb = $debug;
        self::$_conexion->debug = $this->_debugdb;
    }

    function error(){
        return "Número error: ".self::$_conexion->ErrorNo() . " Error: ".self::$_conexion->ErrorMsg();
    }
}
