<?php
include 'connection.php';

$conn = OpenCon();

if(isset($_POST['submit'])){
  $rig_id=$_POST['rig_id'];
  $rig_name=$_POST['rig_name'];
  $location=$_POST['location'];
  $rig_type=$_POST['rig_type'];
  $capacity=$_POST['capacity'];

  $query="insert into oilrigs(rig_id,rig_name,location,rig_type,capacity) values (?,?,?,?,?)";

  if($stmt = $conn->prepare($query)) {
    $stmt->bind_param("isssi",$rig_id,$rig_name,$location,$rig_type,$capacity);
    $stmt->execute();

    Print '<script>window.location.assign("http://localhost:80/DBMS_MP/oilrigs.html");</script>';
  }
  else
    echo $conn->error;
}

CloseCon($conn);
?>
