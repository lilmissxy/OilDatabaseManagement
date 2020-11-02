<?php

include 'connection.php';

$conn = OpenCon();

if(isset($_POST['uname'])){
  $uname=$_POST['uname'];
  $email=$_POST['email'];
  $password=$_POST['password'];

  $query="insert into sign_up(uname,email,password) values (?,?,?)";

  if($stmt = $conn->prepare($query)) {
    $stmt->bind_param("sss",$uname,$email,$password);
    $stmt->execute();

    Print '<script>window.location.assign("http://localhost:80/DBMS_MP/index.html");</script>';
  }
  else
    echo $conn->error;
  }
else{
  echo "Error";
}
?>
