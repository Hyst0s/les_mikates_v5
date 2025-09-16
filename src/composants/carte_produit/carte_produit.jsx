import './carte_produit.css';

export default function Carte_produit() {
  return (
    <main>
      <div class="fiche-produit">
        <div class="image-wrapper">
          <img class="plat-img" src="../images/mes_produits/plat1.png" alt="Mikatés" />
        </div>
        <div class="contenu">
          <p><strong>Mikatés</strong><br>
            Petits beignets dorés, croustillants à l’extérieur et fondants à l’intérieur.<br>
            <strong>Portion :</strong> 10 pièces</br>
            <strong>Parfum :</strong> Nature, Banane, Beurre de cacahuète</br>
            <strong>Prix :</strong> 5€ les 10 nature / 7€ les 10 aromatisé</p>
            
            <div class="boutons">
              <a href="" class="ajouter">Ajouter</a>
              <a href="../description_plat\description_plat.php" class="voir-plus">Voir plus</a>
            </div>
        </div>
      </div>
    </main>
  );
}


