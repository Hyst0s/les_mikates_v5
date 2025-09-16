<?php

session_start();

//inlcure le fichier de connexion à la base de données
include '../bdd/connex_bdd.php'; // fichier relatif au fichier de connexion

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email        = isset($_POST['email']) ? trim($_POST['email']) : '';
    $mot_de_passe = $_POST['mot_de_passe'] ?? '';

    if ($email === '' || $mot_de_passe === '') {
        // Idéalement: stocker un message en session et rediriger vers la page de login
        header ("location: ../page_utilisateur/utilisateur.php");
        exit;
    }

    try {
        // Récupération de l'utilisateur par email
        $stmt = $connexion->prepare(
            "SELECT 
                id_utilisateur, nom, prenom, pseudo, mot_de_passe, email, avatar, role
             FROM utilisateurs
             WHERE email = :email
             LIMIT 1"
        );
        $stmt->execute([':email' => $email]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$user) {
            echo "Email non trouvé.";
            exit;
        }

        // Vérification du mot de passe
        //    - Si tes MDP sont en clair (ex: '123456'), on garde la comparaison simple
        //    - Si tu migreras vers des MDP hashés, utilise password_verify()
        $mdp_ok = $mot_de_passe === $user['mot_de_passe']
                  || password_verify($mot_de_passe, $user['mot_de_passe']); // prêt pour plus tard
        if (!$mdp_ok) {
            echo "Mot de passe incorrect.";
            exit;
        }

        // si Connexion OK → session utilisateur classique
        session_regenerate_id(true);
        $_SESSION['user'] = [
            'id'      => (int)$user['id_utilisateur'],
            'nom'     => $user['nom'],
            'prenom'  => $user['prenom'],
            'pseudo'  => $user['pseudo'],
            'email'   => $user['email'],
            'avatar'  => $user['avatar'],
            'role'    => $user['role'], // 'utilisateur' dans ta capture
            'is_auth' => true,
        ];

        // 4) Redirection vers l’espace utilisateur (pas d’accès admin ici)
        // Adapte le chemin si besoin
        header("Location: page_utilisateur\utilisateur.php");
        exit;

    } catch (PDOException $e) {
        echo "Erreur lors de la connexion : " . htmlspecialchars($e->getMessage());
        exit;
    }
}