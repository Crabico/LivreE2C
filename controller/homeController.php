<?php
$isLogged = true;







$title = "Silence on lit à l'E2C";
    $subtitle = "Lire c'est bien";
    
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

    require_once("../view/homeView.php");