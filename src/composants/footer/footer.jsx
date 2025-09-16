import React from 'react';
import './footer.css';
import logo_mikate from 'src/assets/images/logos/logo_mikate.png';

// ⬇️ Option A : images dans src/assets (on les importe)
import phone from '../src/assets/image_produit/images/accueil/téléphone.png';
import mail from '../src/assets/image_produit/images/accueil/mail.png';
import map from '../src/assets/image_produit/images/accueil/map.png';
import facebook from '../src/assets/image_produit/images/accueil/facebook_logo.png';
import instagram from '../src/assets/image_produit/images/accueil/instagram 1.png';
import youtube from '../src/assets/image_produit/images/accueil/youtube.png';

export default function Footer() {
  return (
    <footer>
      <div className="text4">
        <h1>Restez informé(e) de nos nouveautés !</h1>
        <h3>Recevez nos menus, offres spéciales et recettes directement dans votre boîte mail</h3>
        <input type="email" placeholder="Votre adresse mail" />
      </div>

      <div className="elements">
        <div className="logo">
          <a href="/">
            <img src={logo_mikate} alt="Logo Les Mikatés de Betti" />
          </a>
        </div>

        <div className="liens_reseaux">
          <ul>
            <li><a href="/index.php">Accueil</a></li>
            <li><a href="/mon_histoire/mon_histoire.php">Mon histoire</a></li>
            <li><a href="/mes_produits/mes_produits.php">Nos produits</a></li>
            <li><a href="/commander/commander.php">Commander</a></li>
            <li><a href="/contact/contact.php">Contact</a></li>
          </ul>
        </div>

        <div className="div_footer3">
          <h1>Les mikatés de Betti</h1>

          <div className="coordonées_img">
            <div style={{ display: 'flex', alignItems: 'center', gap: 20 }}>
              <img src={phone} alt="" width={25} />
              <h4>06.13.50.55.73</h4>
            </div>

            <div style={{ display: 'flex', alignItems: 'center', gap: 10 }}>
              <img src={mail} alt="" width={35} />
              <h4>lesmikatesdebetti@gmail.com</h4>
            </div>

            <div style={{ display: 'flex', alignItems: 'center', gap: 20 }}>
              <img src={map} alt="" width={25} />
              <h4>
                Livraison de beignets et plats chauds les week-ends <br />
                sur TOURS ET LES ALENTOURS
              </h4>
            </div>
          </div>
        </div>

        <div className="div_footer4">
          <h1 style={{ marginBottom: '15%' }}>La tradition dans chaque plat.</h1>

          <div className="icon_reseau">
            <a href="https://www.facebook.com/share/177yBt8PgQ/" target="_blank" rel="noopener noreferrer">
              <img src={facebook} alt="Facebook" />
            </a>
            <a href="https://www.instagram.com/betti_auquotidien?igsh=MWprcnplb2Y2NjBsZw==" target="_blank" rel="noopener noreferrer">
              <img src={instagram} alt="Instagram" />
            </a>
            <a href="https://youtube.com/@bettinak-desruisseaux?si=9H1zPiBgy27IRKWZ" target="_blank" rel="noopener noreferrer">
              <img src={youtube} alt="YouTube" />
            </a>
          </div>

          <h3 style={{ marginTop: '15%' }}>
            © 2025 – Tous droits réservés – Les mikatés de Betti <br /><br />
            En utilisant ce site, vous acceptez nos conditions d’utilisation et notre politique de confidentialité.
          </h3>
        </div>
      </div>
    </footer>
  );
}