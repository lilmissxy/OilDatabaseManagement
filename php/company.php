<?php

include 'connection.php';

$conn = OpenCon();

if(isset($_POST['submit'])){
  $cname=$_POST['cname'];
  $country=$_POST['country'];
  $rig_id=$_POST['rig_id'];
  $cap_bought=$_POST['cap_bought'];
  $tot_cost=$_POST['tot_cost'];
  $tax=$_POST['tax'];


  $query="insert into company_copy(cname, country, rig_id, cap_bought, tot_cost, tax) values (?,?,?,?,?,?)";

  if($stmt = $conn->prepare($query)) {
    if($stmt->bind_param("ssiiid",$cname, $country, $rig_id, $cap_bought, $tot_cost, $tax)) {
    if($stmt->execute()){
    print '<script>window.location.assign("http://localhost:80/DBMS_MP/company.html");</script>';
  }
  else {
    echo $stmt->error;
  }
}
  else {
    echo $stmt->error;
  }
  }
  else
    echo $conn->error;
}

CloseCon($conn);
?>
