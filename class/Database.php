<?php
class Database
{
    public function dbConnect()
    {
        static $DBH = null;
        if (is_null($DBH)) {
            $connection = new mysqli(HOST, USER, PASSWORD, DATABASE);
            if ($connection->connect_error) {
                die("Banco de dados offline! (Ligar! -> XAMPP, WAMPP ETC...): " . $connection->connect_error);
            } else {
                $DBH = $connection;
            }
        }
        return $DBH;
    }
}