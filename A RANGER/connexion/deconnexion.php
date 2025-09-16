<?php
    session_start();
    session_destroy();
    header('Location: ../connexion/se_connecter.php');
    ?>