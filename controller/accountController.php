<?php 
$isLogged = true;

if(!$isLogged) {
    header("location: ../controller/homeController.php");
}


$title = "Bonjour";
$subtitle = "Mes infos";

$navButtons = [/*"Accueil", "Bibliothèque", "Espace détente", "Qui sommes nous"*/ 
[
    "label" => "Accueil", 
    "path" =>"../controller/homeController.php"
],

[
    "label" => "Bibliothèque", 
    "path" =>"../controller/libraryController.php"
],

[
    "label" => "Espace détente", 
    "path" =>"../controller/gameController.php"
],

[
    "label" => "Qui sommes nous", 
    "path" =>"../controller/usController.php"
],

];

//var_dump($navButtons);

require_once("../view/accountView.php");



