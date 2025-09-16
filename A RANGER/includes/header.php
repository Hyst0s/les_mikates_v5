<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../includes/header.css">
    <link rel="stylesheet" href="../includes/footer.css">
    
    <?php
    
    define('CSS_PATH', '../styles/');

    $page = basename($_SERVER['PHP_SELF']);

    if ($page === 'index.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/index.css'>";
        } elseif ($page === 'mon_histoire.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/mon_histoire.css'>";
        } elseif ($page === 'mes_produits.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/mes_produits.css'>";
        } elseif ($page === 'contact.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/contact.css'>";
        } elseif ($page === 'commander.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/commander.css'>";
        } elseif ($page === 'description_plat.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/description_plat.css'>";
        } elseif ($page === 'utilisateur.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/utilisateur.css'>";
        } elseif ($page === 'inscription.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/inscription.css'>";
        } elseif ($page === 'se_connecter.php') {
        echo "<link rel='stylesheet' type='text/css' href='" . CSS_PATH . "../styles/se_connecter.css'>";
        }
    ?>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Passion+One:wght@400;700;900&family=Poly:ital@0;1&display=swap" rel="stylesheet">
    <title>Les mikatés de Betti</title>
</head>
<body>
  <header>
    <div class="container">

    <div class="imgcoin">
      <img src="../images\accueil\image_coin_header.png" alt="">
    </div>

    <nav class="lien">
      <ul>
        <li><a href="../mon_histoire/mon_histoire.php">Mon Histoire</a></li>
        <li><a href="../mes_produits/mes_produits.php">Mes produits</a></li>
        <li><a href="../index.php"><img src="../images\accueil\logo_mikate.png" alt=""></a></li>
        <li><a href="../commander/commander.php">Commander</a></li>
        <li><a href="../contact/contact.php">Contact</a></li>
        <div class="icon">
        <a href="../connexion\se_connecter.php"><img src="../images/accueil/union-1.png" alt=""></a>
        <a href="../commander/commander.php"><img src="../images/accueil/shopping-basket 1.png" alt=""></a>
    </div>
      </ul>
    </nav>

    

    <div class="imgcoin" id="imgcoin1">
      <img src="../images/accueil/image_coin_header.png" alt="">
    </div>
  </div>
  </header>
</body>
