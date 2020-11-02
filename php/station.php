<?php

include 'connection.php';

$conn = OpenCon();
session_start();
if(isset($_POST['submit'])){
  $cname=$_POST['cname'];
  $stat_id=$_POST['stat_id'];
  $stat_loc=$_POST['stat_loc'];
  $cap_l=$_POST['cap_l'];
  $oil_type=$_POST['oil_type'];
  $tax=$_POST['tax'];
  $price=$_POST['price'];


  $query="insert into station(cname, stat_id, stat_loc, cap_l, oil_type, tax, price) values (?,?,?,?,?,?,?)";

  if($stmt = $conn->prepare($query)) {
    $stmt->bind_param("sisisii",$cname, $stat_id, $stat_loc, $cap_l, $oil_type, $tax, $price);
    $stmt->execute();

    Print '<script>window.location.assign("http://localhost:80/DBMS_MP/station.html");</script>';
  }
  else
    echo $conn->error;
}

CloseCon($conn);
?>
