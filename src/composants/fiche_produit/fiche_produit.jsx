import "./fiche_produit.css";

export default function Fiche_produit () {
    return (
    <main>
        <section class="section1">
            <div class="titre">
            <h1>Description du plat</h1>
            </div>

            <div class="img_plat">
                <img src="src\assets\images\mes_produits\plat1.png" alt=""/>
            </div>

            <div class="texte">
            <h3>C’est un plat emblématique de la cuisine congolaise,
                simple, nourrissant et très apprécié pour sa richesse en goût.
                Le mot "Madesu" vient du lingala et signifie "haricots".
                Il était souvent cuisiné lors des grandes réunions de
                famille ou des fêtes populaires, car il pouvait être 
                préparé en grande quantité et nourrir beaucoup de monde
            </h3>
            </div>

            <div class="button">
            <button>Ajouter au panier</button>
            </div>

            <div class="titre2">
            <h1>Ingredients</h1>
            </div>

            <div class="liste_ingredients">
                <ul>
                    <li>Haricots rouges ou blanc</li> 
                    <li>Tomates fraîches ou concentré de tomate</li> 
                    <li>Oignons</li> 
                    <li>Ail</li>
                    <li>Huile végétale</li> 
                    <li>Sel, Poivre</li>
                </ul> 
            </div>

            <div class="texte3">
                <p>Allergène Possibles dans le Madesu</p>
                <p>Légumineuses (Haricots rouges / blancs) /Ail / Oignon</p>
            </div>
        </section>
    </main>
    );
}