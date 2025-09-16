<?php include("../includes/header.php"); ?>

<main>

<section class="section1">
  <div class="fille">
    <h1>Une question, une demande <br>
        particulière ? Écris-moi, je te <br>
        répond avec le cœur et le sourire !</h1>
    <img src="../images\contact\personnage.png" alt="">
  </div>
</section>

<!-- ------section2-------- -->

<section class="section2">
  <div class="section2_div1">
      <h1>Me contacter</h1>
      
  </div>
  
  <div class="section2_div2">

    <div class="coordonnées">
        <div id="infos">
          <img src="../images\contact\phone.png" alt="">
          <h1> 06.13.50.55.73</h1>
        </div>
        <div id="infos">
          <img src="../images\contact\map-pinned.png" alt="">
          <h1>Tours nord et alentours</h1>
        </div>
    </div>

    <div class="form-container">
    <form>
      <div class="input-row">
        <input type="text" placeholder="Nom">
        <input type="text" placeholder="Prenom">
      </div>

      <input type="email" placeholder="Adresse mail...">
      <input type="text" placeholder="Sujet">
      <textarea placeholder="Message ..."></textarea>

      <button type="submit">Envoyer</button>
    </form>
  </div>
</section>

<section class="section3">
    <div class="icon_reseau1">
      <a href=""><img src="../images/contact/facebook.png" alt=""></a>
      <a href=""><img src="../images\contact\instagram.png" alt=""></a>
      <a href=""><img src="../images\contact\youtube.png" alt=""></a>
    </div>
    <div class="section3_div2">
      <div>
        <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1SLGgmSiySorniJ6-ltz1oAhtXC1hD3Y&ehbc=2E312F&noprof=1" width="640" height="480"></iframe>
      </div>
      <div class="section3_div2_text">
        <div class="text">
          <button class="bouton_bleu"></button>
          <p>Zone livraison gratuite</p>
        </div>
        
        <div class="text1">
          <button class="bouton_rouge"></button>
          <p>Zone livraison payante</p>
        </div>

      </div>
    </div>
</section>

<section class="section4">
  <div class="section4_div1">
    <h1>Restez informé(e) de nos nouveautés !</h1>
    <h3>Recevez nos menus, offres spéciales et recettes directement dans votre boîte mail</h3>
    <input type="text" value="Votre adresse mail...">
  </div>
</section>

</main>

<!----------------------------Footer------------------------------------------------->

<?php include("../includes/footer.php"); ?>
  
</body>
</html>