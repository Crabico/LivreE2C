<?php 
$title = "Jouons a un jeu";
$subtitle = "Utilise ton cerveau";



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


require_once("../view/gameView.php")
?>

