<?php include("../includes/header.php"); ?>

<main class="card" role="main" aria-labelledby="titre">
    <h1 id="titre" class="title">Connexion</h1>

    <form action="../connexion/config_connexion.php" method="post" enctype="multipart/form-data">
      <div class="field">
        <label for="email">Adresse mail</label>
        <input id="email" name="email" type="email" placeholder="Adresse mail" required autocomplete="email" inputmode="email">
      </div>

      <div class="field">
        <label for="mdp">Mot de passe</label>
        <input id="mdp" name="mdp" type="password" placeholder="Mot de passe" required autocomplete="current-password">
      </div>

      <button type="submit">Se connecter</button>
    </form>

    <p style="margin-top:18px; font-size:14px; text-align:center; color:var(--muted);">
      Pas encore de compte ? <a href="../formulaire_inscription/inscription.php" style="color:var(--accent-2); font-weight:600; text-decoration:none;">Inscription</a>
    </p>
  </main>


  <?php include("../includes/footer.php"); ?>

</body>
</html>