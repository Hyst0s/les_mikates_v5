import React, { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import Header from './composants/header/header.jsx';
import Footer from './composants/footer/footer.jsx';
import Form_inscription from './composants/inscription/inscription.jsx';
import Form_connexion from './composants/connexion/connexion.jsx';


createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Header />
    <Form_inscription />
    <Form_connexion />
    <Footer />
  </StrictMode>
);

