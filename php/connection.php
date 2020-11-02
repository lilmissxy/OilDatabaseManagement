<?php

function OpenCon() {

  $conn = new mysqli("localhost","root","","oil_db") or die("Connection failed");

  return $conn;
}

function CloseCon($conn) {

  $conn->close();
}

 ?>
