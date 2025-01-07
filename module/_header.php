<header>
    <img src="../assets/logo.png" alt="logo" id="logolivre">
<div id="titre">
    <h1><?=$title?></h1>
    <h2><?=$subtitle?></h2>
</div>

<div id="LogForm">

<?php
if(isset($_POST["username"])){
    $username=$_POST["username"];
?>

<p><?= "Bonjour $username" ?></p>

<?php
}else{
?>
    <form method="post" action="../controller/loggingController.php" id="login-form">

    <div>
        <label for="email">Votre Email : </label>
        <input type="email" name="email" id="email" require_once>
    </div>

    <div class="form line">
        <label for="password">Mot de passe</label>
        <input type="password" name="password" id="password" required>
    </div>

    <input type="submit" value="Se connecter" class="logging.bouton">

        <?php
} ?>
</div>

</header>