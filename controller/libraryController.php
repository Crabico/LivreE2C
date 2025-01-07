<?php 


$title = "Faites votre choix";
$subtitle = "Y'en a pour tous les gouts";

$isLogged = true;

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
    if($isLogged) {
        $navButtons[]= [
            "label" => "Mon compte",
            "path" => "../controller/accountController.php"
        ];
    }

    require_once("../view/libraryView.php")
?>

