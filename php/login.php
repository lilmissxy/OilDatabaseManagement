<?php

include 'connection.php';

$conn = OpenCon();

if(isset($_POST['uname'])){
  $uname = $_POST['uname'];
  $password=$_POST['password'];

  $query="select uname, password from sign_up where uname=? and password=?";

  if($stmt = $conn->prepare($query)) {
    $stmt->bind_param("ss",$uname,$password);
    $stmt->execute();

    if($stmt->fetch()){
      echo "Done";
      $msg="Login successfull";
      echo "<script type='text/javascript'>alert('$msg');</script>";
      echo "<script type='text/javascript'>window.location.href='php\userpage1.html'</script>";
      Print '<script>window.location.assign("http://localhost:80/DBMS_MP/userpage1.html");</script>';

    }
    else {
      echo $uname." ".$password;
    }
  }
  else
    echo $conn->error;
  }
else{
  echo "Error";
}
?>
