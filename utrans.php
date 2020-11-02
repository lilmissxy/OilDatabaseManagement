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
      position: relative;
      padding-top: 50px;
      padding-bottom: 50px;
    }
    .bottom-container {
    background-color: #66BFBF;
    padding: 50px 0 20px;
    }
    table,th, td{
      border: 1px solid black;
      margin:auto;
    }
    </style>
    <link rel="stylesheet" href="page1.css">
  </head>
  <body>

    <div class="top-containe">
      <h1>Transport</h1><br><br >
    </div>

    <div class="middle-container" >
      <table>
  <tr>
  <th>Station ID</th>
  <th>Vehicle No.</th>
  <th>Vehicle Type</th>
  <th>Vehicle Capacity</th>

  </tr>

  <?php
  $conn = mysqli_connect("localhost", "root", "", "oil_db");
  // Check connection
  if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  }
  $ig = filter_input(INPUT_POST,'ts');


  $sql = "SELECT * FROM transport where stat_id = $ig;";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
  echo "<tr><td>" . $row["stat_id"] . "</td><td>" . $row["vehi_no"] . "</td><td>".$row["vehi_type"] . "</td><td>".$row["vehi_cap"] . "</td><td>";
  }
  echo "</table>";
  } else { echo "0 results"; }
  $conn->close();
  ?>
  </table>
    </div>
<br><br><br><br><br>
    <div class="bottom-container">
      <a class="footer-link" href="https://www.facebook.com/oilgaspeople/">facebook</a>
      <a class="footer-link" href="https://www.instagram.com/oilandgaspeople/?hl=en">Instagram</a><br><br>
      <p class="wite">© 2019 Oil Management System</p>
    </div>
  </body>
</html>
