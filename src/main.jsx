import React, { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import './assets/generales/generales.css'; //importation des variables css
import './assets/fonts/fonts.css'; //importation des typographie de la page


import Header from './composants/header/header.jsx';
import Footer from './composants/footer/footer.jsx';
import Form_inscription from './composants/inscription/inscription.jsx';
import Form_connexion from './composants/connexion/connexion.jsx';
import Fiche_produit from './composants/fiche_produit/fiche_produit.jsx'
import Avis_client from './composants/avis_client/avis_client.jsx';
import Carte_produit from './composants/carte_produit/carte_produit.jsx';
import Carte_prod_panier from './composants/carte_prod_panier/carte_prod_panier.jsx';
import Carrousel from './composants/carrousel/carrousel.jsx';
import Banniere from './composants/banniere/banniere.jsx';
import Bloc_commande from './composants/bloc_commande/bloc_commande.jsx';
import TextMonHistoire from './composants/text_mon_histoire/text_mon_histoire.jsx';


createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Header />
    <Lotcartes />
    <Form_inscription />
    <Fiche_produit />
    <Banniere />
    <Avis_client />
    <Carrousel />   
    <Carte_prod_panier />
    <Bloc_commande />
    <Form_connexion />
    <Header />
    <Footer />
    <TextMonHistoire />
  </StrictMode>
);
