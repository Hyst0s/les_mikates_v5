<?php

include '../bdd/connex_bdd.php';

$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$email = $_POST['email'];
$mot_de_passe = $_POST['mdp'];
$confirm_password = $_POST['mdp2'];


if ($_POST['mdp'] !== $confirm_password) {
    echo "les mots de passe ne correspondent pas.";
    exit;
}

$sql = "INSERT INTO utilisateur (nom, prenom, email, mot_de_passe)
VALUES ('$nom', '$prenom', '$email', '$mot_de_passe')";

if ($connexion->query($sql) === TRUE) {
    echo "Inscription réussie. Vous pouvez maintenant vous connecter.";
   } else {
    echo "Erreur: lors de l'inscription : " . $connexion->error();
   }

   $connexion->close();
   ?>
    



