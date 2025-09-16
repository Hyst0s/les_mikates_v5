import React, { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import Form_inscription from './composants/inscription/inscription.jsx';
import Form_connexion from './composants/connexion/connexion.jsx';


createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Form_inscription />
    <Form_connexion />
  </StrictMode>
);

