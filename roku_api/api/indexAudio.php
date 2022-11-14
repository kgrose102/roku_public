<?php
  // route requests for CRUD
  require('../config/connect.php');

  // demo only
  if (isset($_POST['username'])) {
    echo 'username via POST:' . $_POST["username"];
    die('  ...and imma stop here');
  }

  $queryAud = "SELECT * FROM audio";

  if (isset($_GET['id'])) {
    $audID = $_GET['id'];
    $queryAud .= ' WHERE audio_id="'.$audID.'"';
  }

  $resultAud = array();

  $runQueryAud = $pdo->query($queryAud);

  while($rowA = $runQueryAud->fetchAll(PDO::FETCH_ASSOC)) {
    $resultAud[] = $rowA;
  }

  echo json_encode($resultAud);

