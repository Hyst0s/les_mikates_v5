<?php
    // Paramètres de connexion
    $serveur = "localhost";
    $utilisateur = "root"; // Nom d'utilisateur MySQL
    $mot_de_passe = "";    // Mot de passe MySQL
    $base_de_donnees = "mikate_bdd"; // Nom de la base de données

    try {
        // Création de la connexion PDO
        $connexion = new PDO(
            "mysql:host=$serveur;dbname=$base_de_donnees;charset=utf8mb4",$utilisateur,$mot_de_passe
        );

        // Configuration des options PDO
        $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $connexion->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

        // Connexion réussie (optionnel : tu peux commenter cette ligne en prod)
        // echo "Connexion réussie à la base de données.";

    } catch (PDOException $e) {
        die("Échec de la connexion : " . $e->getMessage()); // pour avertir des erreurs de connexion
    } 
?>