<?php
   include 'php/connection.php';

   $conn = OpenCon();

   if(isset($_GET['rig_name'])) {
     $rig_id = mysqli_real_escape_string($conn, $_GET['rig_name']);

     $sql = "SELECT * FROM oilrigs WHERE rig_name  = $rig_name ";

     $result = mysqli_query($conn, $sql);

     $oilrigs = mysqli_fetch_assoc($result);
     mysqli_free_result($result);
     mysqli_close($conn);

     print_r($oilrigs);
   }
   ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Page 1</title>
      <style media="screen">
         .top-containe {
         background-color: #E4F9F5;
         position: relative;
         padding-top: 30px;
         padding-bottom: 30px;
         color: #fafaf6;
         font-family: 'Headland One', serif;
         font-size: 15px;
         }
         .middle-container {
         padding-left: 200px;
         padding-right: 200px;
         padding-top: 50px;
         padding-bottom: 50px;
         position: relative;
         }
         hr{
         border: dotted #EAF6F6;
         border-width: 10px;
         border-bottom: none;
         margin: 10px auto;
         width: 10%;
         }
      </style>
      <link rel="stylesheet" href="page1.css">
   </head>
   <body>
      <div class="top-container">
         <h1>OIL RIGS</h1>
         <br><br>
      </div>
      <div class="middle-container">
        <label for="">Rig Name : </label>
        <input type="text" name="rig_name" value="">
         <h4><?php echo htmlspecialchars($oilrigs['rig_name']); ?></h4>
         <p>Located in : <?php echo htmlspecialchars($oilrigs['location']); ?></p>
         <p>Type of Rig : <?php echo htmlspecialchars($oilrigs['rig_type']); ?></p>
         <p>Capacity : <?php echo htmlspecialchars($oilrigs['capacity']); ?></p>
         <h4>no such oil rig.</h4>
      </div>
      <div class="bottom-container">
         <a class="footer-link" href="https://www.facebook.com/oilgaspeople/">facebook</a>
         <a class="footer-link" href="https://www.instagram.com/oilandgaspeople/?hl=en">Instagram</a><br><br>
         <p class="wite">© 2019 Oil Management System</p>
      </div>
   </body>
</html>
