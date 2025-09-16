<?php include("../includes/header.php"); ?>

<main>



<section class="section1">

<div class="titre">
    <h1>Mon compte</h1>
</div>

<div class="container1">

  <div class="container1_div1">

    <div class="menu">
      <img src="../images\utilisateur\man 1.png" alt="">
      <h1>Informations générales</h1>
      <h1>Mes commandes</h1>
      <h1>Mes plats favoris</h1>
      <a href="../connexion\deconnexion.php">Déconnexion</a>
    </div>
    
  </div>

  <div class="container1_div2">
    
    <div class="titre2">
      <h1>Mes commandes</h1>
    </div>

    <div class="container_box">
        <div class="box">
      <h2>Rougail saucisse</h2>
      <p class="statut en-cours">En cours</p>
      <p class="date">lundi 24 juin 2025</p>
    </div>

    <div class="box">
      <h2>Kari poulet</h2>
      <p class="statut livree">Livrée</p>
      <p class="date">mercredi 12 juin 2025</p>
    </div>

    <div class="box">
      <h2>Madesu</h2>
      <p class="statut livree">Livrée</p>
      <p class="date">jeudi 09 juin 2025</p>
    </div>

    <div class="box">
      <h2>Riz à la viande</h2>
      <p class="statut annulee">Annulée</p>
      <p class="date">dimanche 03 juin 2025</p>
    </div>
  </div>
    </div>
</div>

</div>
</section>
</main>

<!----------------------------Footer------------------------------------------------->

<?php include("../includes/footer.php"); ?>
  
</body>
</html>