<?php

//Definisco le costanti necessarie a msqli
define ("DB_SERVERNAME","localhost");
define("DB_USERNAME", "root");
define("DB_PASSWORD", "root");
define("DB_NAME", "db_university");
define("DB_PORT", "3306");

//valorizzo l'estensione per il collegamento
$connection = new mysqli(DB_SERVERNAME, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
//  var_dump($connection);

 //Verifico se la connessione è andata a buon fine o meno
if($connection && $connection->connect_error){
    echo "Connection failed: " . $connection->connect_error;
} else {
    echo "Connection successfull :) ";
}



$statement = $connection->prepare("INSERT INTO `students` (`name`,`surname`) VALUES (?, ?)");
$statement->bind_param( "iss", "iss", $name, $surname);
$name= '?';
$lastname='?';
$query= $statement->execute();
var_dump($query);

?>