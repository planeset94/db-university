<?php
$name= $_GET['name'];
// var_dump($name);
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
    // echo "Connection successfull :) ";
}

//Associo a una variabile una query 
$sql = "SELECT * FROM students WHERE name = '$name'";

$results = $connection->query($sql);
    // var_dump($results);
    if ($results && $results->num_rows > 0) {
        //var_dump($results->fetch_assoc()); fetches a single element from the results
    $message= "Utente presente del DB";
        
    } else{
        $message= "Utente non trovato";
    }

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Validazione input</title>
</head>

<body>

    <form action="#" method="get">

        <label for="name">Nome utente</label>
        <input type="text" name="name" id="name" placeholder="Insert your name">
        <br>
        <input type="submit" value="Invia">
    </form>


    <h1><?=$name . "--> " .$message; ?></h1>

    <p class="name"><?= $item['name'];?> </p>

</body>

</html>