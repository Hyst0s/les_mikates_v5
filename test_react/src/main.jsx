import React, { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import Lotcartes from './App.jsx';
import Inscription from './inscription.jsx';
import Connexion from './connexion.jsx';
import Description_plat from './description_plat.jsx';


createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Lotcartes />
    <Inscription />
    <Description_plat />
    
  </StrictMode>
);
