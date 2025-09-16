import './connexion.css';

export default function Connexion() {
  return (
    <div className="card" role="main" aria-labelledby="titre">
      <h1 id="titre" className="title">Connexion</h1>

      <form
        action="../connexion/config_connexion.php"
        method="post"
        encType="multipart/form-data"
      >
        <div className="field">
          <label htmlFor="email">Adresse mail</label>
          <input
            id="email"
            name="email"
            type="email"
            placeholder="Adresse mail"
            required
            autoComplete="email"
            inputMode="email"
          />
        </div>

        <div className="field">
          <label htmlFor="mdp">Mot de passe</label>
          <input
            id="mdp"
            name="mdp"
            type="password"
            placeholder="Mot de passe"
            required
            autoComplete="current-password"
          />
        </div>

        <button type="submit">Se connecter</button>
      </form>

      <p
        style={{
          marginTop: 18,
          fontSize: 14,
          textAlign: 'center',
          color: 'var(--muted)',
        }}
      >
        Pas encore de compte ?{' '}
        <a
          href="../formulaire_inscription/inscription.php"
          style={{ color: 'var(--accent-2)', fontWeight: 600 }}
        >
          S’inscrire
        </a>
      </p>
    </div>
  );
}
