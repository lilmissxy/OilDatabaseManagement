<?php
include 'php/connection.php';

$conn = OpenCon();

$data = array();

if($stmt = $conn->prepare("SELECT * FROM station")) {
    $stmt->execute();

    $data_res = $stmt->get_result();

    while($row = $data_res->fetch_assoc()) {
      $data[] = array(
        'nam'=>$row['cname'],
        'staid'=>$row['stat_id']

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
      <h1>Station</h1><br><br >
    </div>

    <div class="middle-container" >
      Station ID starts from 2001 till _____.<br>Enter the station ID according to the company name you want to view.<br><br>
      <form action ="ustat.php" method="post">
<label for="">  Station ID : </label>
    <input type="text" name="st" style="background: transparent;border: 1px solid black  ;border-radius: 10px; margin-left: 10px;  color: black;  height: 25px;width: 200px" required><br><br>

    <input type="submit" name="submit" value="Submit" style="background-color: transparent; margin-left: 10px; border-radius: 10px; color: black;height: 35px;width: 100px; font-size: 20px"><br><br>
    </form>

        <table>
          <thead>
            <tr>
              <th>Company Name</th>
              <th>Station ID</th>

            </tr>
          </thead>

          <tbody>

            <?php
              $c = count($data);
              for($i = 0; $i < $c; $i++) {
                  echo "<tr>
                          <td>".$data[$i]['nam']."</td>
                          <td>".$data[$i]['staid']."</td>

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
