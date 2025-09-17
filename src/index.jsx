import React, { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import './index.css';
import Header from './composants/header/header.jsx';
// import Footer from './composants/footer/footer.jsx';
import Form_inscription from './composants/inscription/inscription.jsx';
import Form_connexion from './composants/connexion/connexion.jsx';
import Avis_client from './composants/avis_client/avis_client.jsx';

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Header />
    <Avis_client />
  </StrictMode>
);