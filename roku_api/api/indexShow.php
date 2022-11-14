<?php
  // route requests for CRUD
  require('../config/connect.php');

  // demo only
  if (isset($_POST['username'])) {
    echo 'username via POST:' . $_POST["username"];
    die('  ...and imma stop here');
  }

  $queryShows = "SELECT * FROM tv_shows";

  if (isset($_GET['id'])) {
    $showID = $_GET['id'];
    $queryShows .= ' WHERE shows_id="'.$showID.'"';
  }

  $resultShow = array();

  $runQueryShow = $pdo->query($queryShows);

  while($rowS = $runQueryShow->fetchAll(PDO::FETCH_ASSOC)) {
    $resultShow[] = $rowS;
  }

  echo json_encode($resultShow);
