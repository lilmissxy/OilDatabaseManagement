<?php
include 'php/connection.php';

$conn = OpenCon();

$data = array();

if($stmt = $conn->prepare("SELECT * FROM company")) {
    $stmt->execute();

    $data_res = $stmt->get_result();

    while($row = $data_res->fetch_assoc()) {
      $data[] = array(
        'name'=>$row['cname'],
        'cont'=>$row['country'],
        'rig_i'=>$row['rig_id'],
        'cap_bou'=>$row['cap_bought'],
        'total'=>$row['tot_cost'],
        'taxx'=>$row['tax'],
        'int' => $row['IfInternational']
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
    <h1>Company</h1><br><br>
  </div>

  <div class="middle-container">

    <table>
      <thead>
        <tr>
          <th>Company Name</th>
          <th>Country</th>
          <th>Rig ID</th>
          <th>Cpacity Bought</th>
          <th>Total Cost</th>
          <th>Tax</th>
          <th>
            IfInternational
          </th>
        </tr>
      </thead>

      <tbody>

        <?php
          $c = count($data);
          for($i = 0; $i < $c; $i++) {
              echo "<tr>
                      <td>".$data[$i]['name']."</td>
                      <td>".$data[$i]['cont']."</td>
                      <td>".$data[$i]['rig_i']."</td>
                      <td>".$data[$i]['cap_bou']."</td>
                      <td>".$data[$i]['total']."</td>
                      <td>".$data[$i]['taxx']."</td>
                      <td>".$data[$i]['int']."</td>
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
