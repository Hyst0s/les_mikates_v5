<?php include("../includes/header.php"); ?>

<main class="card" role="main" aria-labelledby="titre">
    <h1 id="titre" class="title">Inscription</h1>

    <form action="../formulaire_inscription\config_inscription.php" method="post">
      <div class="field">
        <label for="nom">Nom</label>
        <input id="nom" name="nom" type="text" placeholder="Nom" required autocomplete="family-name">
      </div>

      <div class="field">
        <label for="prenom">Prénom</label>
        <input id="prenom" name="prenom" type="text" placeholder="Prénom" required autocomplete="given-name">
      </div>

      <div class="field">
        <label for="email">Adresse mail</label>
        <input id="email" name="email" type="email" placeholder="Adresse mail" required autocomplete="email" inputmode="email">
      </div>

      <div class="field">
        <label for="mdp">Mot de passe</label>
        <input id="mdp" name="mdp" type="password" placeholder="Mot de passe" required autocomplete="new-password" minlength="5">
      </div>

      <div class="field">
        <label for="mdp2">Confirmer mot de passe</label>
        <input id="mdp2" name="mdp2" type="password" placeholder="Confirmer mot de passe" required autocomplete="new-password" minlength="5">
      </div>

      <button type="submit">Inscription</button>
    </form>
  </main>

<?php include("../includes/footer.php"); ?>

</body>
</html>