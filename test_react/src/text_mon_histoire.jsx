import './text_mon_histoire.css';




export default function TextMonHistoire() {
    return(
        <main>
        <section class="section15">
        <h1>La cuisine de Betti</h1>
        <div class="section15_div1">
            <img src="../src/assets/image_produit/images/mon_histoire/image1.png" alt=""/>

            <SplitText


  className="text-2xl font-semibold text-center"

  delay={50}

  duration={0.6}

  ease="power3.out"

  splitType="chars"

  from={{ opacity: 0, y: 40 }}

  to={{ opacity: 1, y: 0 }}

  threshold={0.1}

  rootMargin="-100px"

  textAlign="center"

  onLetterAnimationComplete={handleAnimationComplete}
  
  tag ="p"

/>
            <p>
                Depuis toute petite, la cuisine a toujours fait partie de ma vie. <br/>
                En tant que petite fille africaine, on apprend très tôt à <br/>
                cuisiner. Je me revois à 9 ou 10 ans, envoyée au marché par <br/>
                ma mère avec quelques pièces en poche. Il fallait acheter les <br/>
                produits du jour, car nous n’avions ni frigo ni réserves : <br/>
                chaque jour, c’était une nouvelle aventure pour trouver de <br/>
                quoi nourrir la famille. <br/><br/><br/>

                Chez nous, même le jeu de dînette n’était pas un simple jeu. <br/>
                C’était une vraie marmite, un vrai feu, et on cuisinait <br/>
                vraiment. C’est ainsi que j’ai grandi, et c’est ce que j’ai <br/>
                naturellement reproduit plus tard, avec ma propre famille. <br/>
                Pour moi, cuisiner, c’était un devoir, une évidence, ce qu’une femme <br/>
                devait savoir faire. <br/><br/><br/>

                Mais avec le temps, et surtout en vivant en Occident, j’ai <br/>
                réalisé que ce n’était pas si « normal » que ça de cuisiner tous <br/>
                les jours, de tout préparer maison, de ne pas acheter surgelé. <br/><br/><br/>

                Aujourd’hui, cuisiner n’est plus seulement un devoir : c’est <br/>
                mon moyen d’expression, mon langage d’amour. C’est ma <br/>
                façon de prendre soin des autres, de leur faire plaisir, de <br/>
                transmettre une part de moi. Que ce soit pour ma famille, <br/>
                mes amis ou mes clients, chaque plat est un cadeau, préparé <br/>
                avec amour et dévouement.
            </p>
            <img src="../src/assets/image_produit/images/mon_histoire/image2.png" alt=""/>
        </div>
    </section>

    <section class="section14">
        <div class="section14_text">
            <h1>Le Voyage des Saveurs</h1>
            <p> Mon parcours avec la cuisine, c’est toute une histoire de vie. <br/>
                Depuis toujours, j’ai cuisiné, souvent sans même réaliser à quel <br/>
                point j’aimais ça. Mais il y a deux ans, un déclic s’est produit. En <br/>
                relisant une note que j’avais écrite à l’âge de 30 ans – alors que <br/>
                j’étais au chômage, avec ma fille Alyssia encore bébé – je suis <br/>
                tombée sur ces mots : <br/><br/>
                "Pourquoi ne pas vendre des plats africains faits maison ?" <br/><br/>

                À l’époque, je n’y avais pas donné suite. Je pensais que je n’étais <br/>
                pas faite pour ça, que je n’étais pas capable de créer une <br/>
                entreprise, que personne n’achèterait mes plats… Mais cette idée, <br/>
                ce rêve, il était déjà là, enfoui.</p>
        </div>

        <div class="section14_img">
            <img src="../src/assets/image_produit/images/mon_histoire/avion.png" alt=""/>
        </div>
    </section>

    <section class="section13">
        <div class="section13_img">
            <img src="../src/assets/image_produit/images/mon_histoire/image1.png" alt=""/>
        </div>

        <div class="section13_text">
            <p>
                Aujourd’hui, je comprends que la cuisine est bien plus <br/>
                qu’une passion pour moi. C’est un moyen d’exister, de <br/>
                m’exprimer, de montrer qui je suis et d’offrir un <br/>
                morceau de ma culture aux autres. <br/>
                Avec le temps, j’ai pris confiance en moi. Je me suis dit : <br/><br/>
                "Pourquoi pas moi ?" <br/><br/>
                Pourquoi ne pas proposer mes plats, mes saveurs, mes histoires aux autres ? <br/><br/>

                C’est ce voyage que je partage à travers mes plats. Une <br/>
                cuisine authentique, généreuse, et inventive. Une <br/>
                cuisine de l’instant, avec ce que j’ai sous la main. Une <br/>
                cuisine d’Afrique, mais surtout une cuisine de cœur.
            </p>
            <img src="../test_react/src/assets/image_produit/images/mon_histoire/pot_fleur.png" alt=""/>
        </div>
    </section>
    </main>
    );
}