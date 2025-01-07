<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Silence On Lit</title>
    <link rel="stylesheet" href="../style/style.css">
    <script type="module" src="../jscript/test.js"></script>
    <script type="module" src="../jscript/nav.js"></script>
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
    <p id="result"></p>

    <div>
       <label for="nombre1">Premier nombre</label> <input type="number" name="number1" id="number1">
    </div>

    <div>
        <label for="nombre2">Deuxieme nombre</label><input type="number" name="number2" id="number2">
    </div>

    <div>
        <input type="submit" value="calculer" id="calculate">
    </div>


</main>

<div id="trigger"></div>

</body>
</html>
