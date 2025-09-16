import React, { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import Lotcartes from './App.jsx';
import Inscription from './inscription.jsx';
import Connexion from './connexion.jsx';
import Description_plat from './description_plat.jsx';
import Banniere from './banniere.jsx';
import Avis_client from './avis_client.jsx';
import Carrousel from './carrousel.jsx';
import Produit_panier from './produit_panier.jsx';


createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Lotcartes />
    <Inscription />
    <Description_plat />
    <Banniere />
    <Avis_client />
    <Carrousel />   
    <Produit_panier /> 
    
  </StrictMode>
);
