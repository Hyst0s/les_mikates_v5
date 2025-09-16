import React, { useState } from 'react';
import './carte_prod_panier.css';

// Option 1 : si tes images sont dans src/assets, on les importe :
import imgPlat from '../src/assets/image_produit/images/commander/plat_1.png';
import imgPoubelle from '../src/assets/image_produit/images/commander/poubelle.png';

// Option 2 (à la place des imports ci-dessus) : si tes images sont dans /public/images,
// utilise: <img src="/images/commander/plat1.png" ... />

function Carte_prod_panier() {
  const [qty, setQty] = useState(1);

  return (
    <div className="panier">
      <div className="panier_1">
        <img src={imgPlat} alt="Plat 1" />

        <div className="panier_1_1">
          <h1>Cari Poulet</h1>
          <h1>14,90€</h1>
        </div>

        <div className="panier_1_2">
          <div className="quantite">
            <button onClick={() => setQty(q => q + 1)}>+</button>
            <h1>{qty}</h1>
            <button onClick={() => setQty(q => Math.max(1, q - 1))}>-</button>
          </div>

          <div className="poubelle">
            <button aria-label="Supprimer cet article">
              <img src={imgPoubelle} alt="" />
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Carte_prod_panier;  // ou: export default Produit_panier; si tu gardes l’ancien nom
