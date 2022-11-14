<?php
  // route requests for CRUD
  require('../config/connect.php');

  // demo only
  if (isset($_POST['username'])) {
    echo 'username via POST:' . $_POST["username"];
    die('  ...and imma stop here');
  }

  $query = "SELECT * FROM Roku_Flashback";
  // $queryAud = "SELECT * FROM audio";
  // $queryShows = "SELECT * FROM tv_shows";

  if (isset($_GET['id'])) {
    $movID = $_GET['id'];
    $query .= ' WHERE movies_id="'.$movID.'"';
  }

  // if (isset($_GET['id'])) {
  //   $audID = $_GET['id'];
  //   $queryAud .= ' WHERE audio_id="'.$audID.'"';
  // }

  // if (isset($_GET['id'])) {
  //   $showID = $_GET['id'];
  //   $queryShows .= ' WHERE shows_id="'.$showID.'"';
  // }

  $result = array();
  // $resultAud = array();
  // $resultShow = array();

  $runQuery = $pdo->query($query);
  // $runQueryAud = $pdo->query($queryAud);
  // $runQueryShow = $pdo->query($queryShows);

  while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
    $result[] = $row;
  }

  // while($rowA = $runQueryAud->fetchAll(PDO::FETCH_ASSOC)) {
  //   $resultAud[] = $rowA;
  // }

  // while($rowS = $runQueryShow->fetchAll(PDO::FETCH_ASSOC)) {
  //   $resultShow[] = $rowS;
  // }

  echo json_encode($result);
  // echo json_encode($resultAud);
  // echo json_encode($resultShow);
