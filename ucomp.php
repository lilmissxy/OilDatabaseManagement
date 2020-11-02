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
      <h1>Company</h1><br><br >
    </div>

    <div class="middle-container" >
      <table>
  <tr>
  <th>Company Name</th>
  <th>Country</th>
  <th>Rig ID</th>
  <th>Capacity Bought</th>
  <th>Total Cost</th>
  <th>Tax</th>

  </tr>

  <?php
  $conn = mysqli_connect("localhost", "root", "", "oil_db");
  // Check connection
  if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  }
  $ib = filter_input(INPUT_POST,'cn');


  $sql = "SELECT * FROM company where rig_id = $ib;";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
  echo "<tr><td>" . $row["cname"] . "</td><td>" . $row["country"] . "</td><td>".$row["rig_id"] . "</td><td>".$row["cap_bought"] . "</td><td>".$row["tot_cost"]. "</td><td>".$row["tax"] . "</td></tr>";
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
