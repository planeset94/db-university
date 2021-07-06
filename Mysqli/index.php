<!-- <pre> -->
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

//Associo a una variabile una query 
$sql = "SELECT * FROM students";

$results = $connection->query($sql);
    // var_dump($results);

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>mysqli</title>
</head>

<body>

    <?php
// Verifichiamo se la query è corretta e se ci sono risultati --> se è tutto vero, mostro a schermo le info

if ($results && $results->num_rows > 0) {
    //var_dump($results->fetch_assoc()); fetches a single element from the results

    // Raggiunto l’ultimo record fetch_assoc() restituisce il valore FALSE, segnalando quindi che non ci sono più dati da prelevare.
    $project = $results->fetch_assoc();
 ?>
    <br>
    <br>
    <h2> Nomi:</h2>
    <br>
    <div class="contenitore">
        <?php foreach ($results as $item) : ?>
        <p class="name"><?= $item['name'];?> </p>
        <?php endforeach ?>
    </div>


    <?php  
}

    //Chiudo la connessione al server
  $connection->close;
  //Liberiamo dalla memoria di PHP i dati della query
  mysql_free_result();
?>








</body>

</html>















<!-- </pre> -->