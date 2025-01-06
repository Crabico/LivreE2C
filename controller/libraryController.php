<?php 
$title = "Faites votre choix";
$subtitle = "Y'en a pour tous les gouts";


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
    
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Silence On Lit</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body> 

<?php 
require_once("../module/_header.php");
require_once("../module/_nav.php");
?>

<nav>
   <a href="../controller/homeController.php" class="bouton"> <strong>Accueil</strong></a>
   <a href="../controller/libraryController"class="bouton"> <strong>Biblihotèque</strong></a>
   <a href="../controller/gameController.php"class="bouton"> <strong>Espace détende</strong></a>
   <a href="../controller/usController.php"class="bouton"> <strong>Qui sommes-nous ?</strong> </a>
</nav>

 <main>
</main>


</body>
</html>
