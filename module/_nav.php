<nav>

<div id="close"></div>
<?php 
foreach($navButtons as $button) {
    ?>
<a href=<?= $button["path"] ?> class="bouton"><?= $button["label"] ?> </a>
    
    <?php 

}

?>


<!--
   <a href="../controller/homeController.php" class="bouton"> <strong>Accueil</strong></a>
   <a href="../controller/libraryController.php"class="bouton"> <strong>Biblihotèque</strong></a>
   <a href="../controller/gameController.php"class="bouton"> <strong>Espace détende</strong></a>
   <a href="../controller/usController.php"class="bouton"> <strong>Qui sommes-nous ?</strong> </a>
-->
</nav>
