<?php
include 'php/connection.php';

$conn = OpenCon();

$data = array();


if($conn->query("CALL pet_cal();") and $conn->query("CALL dsl_cal();")){

}
else {
echo "error";
}

if($stmt = $conn->prepare("SELECT * FROM station")) {
    $stmt->execute();

    $data_res = $stmt->get_result();

    while($row = $data_res->fetch_assoc()) {
      $data[] = array(
        'nam'=>$row['cname'],
        'staid'=>$row['stat_id'],
        'stal'=>$row['stat_loc'],
        'cl'=>$row['cap_l'],
        'oilty'=>$row['oil_type'],
        'taxxx'=>$row['tax'],
        'pri'=>$row['price']
      );
    }

    $data = json_decode(json_encode($data),true);
    $stmt->close();
}
else {
  echo $conn->error;
}

CloseCon($conn);
?>
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

    table,th, td{
      border: 1px solid black;
      margin:auto;
    }
  </style>
  <link rel="stylesheet" href="page1.css">
</head>

<body>

  <div class="top-containe">
    <h1>Station</h1><br><br>
  </div>

  <div class="middle-container">
    <table>
      <thead>
        <tr>
          <th>Company Name</th>
          <th>Station ID</th>
          <th>Station Location</th>
          <th>Capacity in Litres</th>
          <th>Oil Type</th>
          <th>Tax </th>
          <th>Price</th>

        </tr>
      </thead>

      <tbody>

        <?php
          $c = count($data);
          for($i = 0; $i < $c; $i++) {
              echo "<tr>
                      <td>".$data[$i]['nam']."</td>
                      <td>".$data[$i]['staid']."</td>
                      <td>".$data[$i]['stal']."</td>
                      <td>".$data[$i]['cl']."</td>
                      <td>".$data[$i]['oilty']."</td>
                      <td>".$data[$i]['taxxx']."</td>
                      <td>".$data[$i]['pri']."</td>

                    </tr>";
          }
         ?>
      </tbody>
    </table>

  </div>


  <div class="bottom-container">
    <a class="footer-link" href="https://www.facebook.com/oilgaspeople/">facebook</a>
    <a class="footer-link" href="https://www.instagram.com/oilandgaspeople/?hl=en">Instagram</a><br><br>
    <p class="wite">© 2019 Oil Management System</p>
  </div>
</body>

</html>
