import './carrousel.css';

export default function Carrousel() {
  return (
    <>
      <section className="section11">
        <div className="image-accueil2"></div>

        <div className="image-accueil3">
          <img src="../src/assets/image_produit/images/accueil/plat2.png" alt="Plat 2" />
          <img src="../src/assets/image_produit/images/accueil/plat1.png" alt="Plat 1" />
          <img src="../src/assets/image_produit/images/accueil/plat3.png" alt="Plat 3" />
        </div>
      </section>

      <section className="section12">
        <a href="../mes_produits/mes_produits.php">Commandez maintenant !</a>
      </section>
    </>
  );
}