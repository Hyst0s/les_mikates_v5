import imgprod from "./assets/mes_produits/plat1.png";
import "./App.css";


function Carte() {
  return (
    
    <div className="fiche-produit">
      <div className="image-wrapper">
        <img className="plat-img"src={imgprod} alt="Mikatés"/>
      </div>
      <div className="contenu">
        <p>
          <strong>Mikatés</strong>
          Petits beignets dorés, croustillants à l’extérieur et fondants à l’intérieur.
          <strong>Portion :</strong> 10 pièces
          <strong>Parfum :</strong> Nature, Banane, Beurre de cacahuète
          <strong>Prix :</strong> 5€ les 10 nature / 7€ les 10 aromatisé
        </p>
        <div className="boutons">
          <a href="" className="ajouter">Ajouter</a>
          <a href="../description_plat/description_plat.php" className="voir-plus">Voir plus</a>
        </div>
      </div>
    </div>
    
  );
}

export default function Lotcartes() {
  return (
       <section className="section1">
      <h1 className="titre-produits">Voici mes produits</h1>
      <Carte />
      <Carte />
      <Carte />
      <Carte />
      <Carte />
      <Carte />
    </section>
  );
}

