import './banniere.css';
import '../../assets/generales/generales.css'; //importation des variables css
import '../../assets/fonts/fonts.css'; //importation des typographie de la page
import { InteractiveHoverButton } from "../../assets/animations/HoverButton.jsx";

function Banniere() {
    return (
        <section class="section4">
        <div class="section4_img1">
            <img src="../src/assets/images/mon_histoire/pot_deco.png" alt=""/>
        </div>

        <div class="section4_div">
            <h1>Une question ? <br/>
               Une commande spéciale ?

            </h1>
        

               <h3>
                    Contactez moi je serais ravie de <br/>
                    vous répondre !
               </h3>

               {/* <a href="../contact\contact.php">Me contacter</a> */}
               <InteractiveHoverButton>Interactive Hover Button</InteractiveHoverButton>
        </div>

        <div class="section4_img2">
            <img src="../src/assets/images/mon_histoire/assiette_deco.png" alt=""/>
        </div>
    </section>
    );
}

export default Banniere;