import './bloc_commande.css';

export default function BlocCommande() {
  return (
    <section className="container1_div2">
      <h1 className="titre2">Mes commandes</h1>

      <div className="container_box">
        <div className="box">
          <h2>Rougail saucisse</h2>
          <p className="statut en-cours">En cours</p>
          <p className="date">lundi 24 juin 2025</p>
        </div>

        <div className="box">
          <h2>Cari poulet</h2>
          <p className="statut livree">Livrée</p>
          <p className="date">mercredi 12 juin 2025</p>
        </div>

        <div className="box">
          <h2>Madesu</h2>
          <p className="statut livree">Livrée</p>
          <p className="date">jeudi 09 juin 2025</p>
        </div>

        <div className="box">
          <h2>Riz à la viande</h2>
          <p className="statut annulee">Annulée</p>
          <p className="date">dimanche 03 juin 2025</p>
        </div>
      </div>
    </section>
  );
}