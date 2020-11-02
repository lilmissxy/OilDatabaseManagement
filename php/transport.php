<?php

include 'connection.php';

$conn = OpenCon();

if(isset($_POST['submit'])){
  $stat_id=$_POST['stat_id'];
  $vehi_no=$_POST['vehi_no'];
  $vehi_type=$_POST['vehi_type'];
  $vehi_cap=$_POST['vehi_cap'];



  $query="insert into transport(stat_id, vehi_no, vehi_type, vehi_cap) values (?,?,?,?)";

  if($stmt = $conn->prepare($query)) {
    $stmt->bind_param("issi",$stat_id, $vehi_no, $vehi_type, $vehi_cap);
    $stmt->execute();

    Print '<script>window.location.assign("http://localhost:80/DBMS_MP/transport.html");</script>';
  }
  else
    echo $conn->error;
}

CloseCon($conn);
?>
