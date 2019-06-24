<?php


include("settings.php");

$table = $_POST['table'];
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
        header('Content-Type: text/csv; charset=utf-8');
      header('Content-Disposition: attachment; filename=data.csv');

 if(isset($_POST["submit"])){

      $output = fopen("php://output", "w");
      $query = "SELECT * from $table";
      $result = mysqli_query($conn, $query);
        while($row = mysqli_fetch_assoc($result))
      {
           fputcsv($output, $row);
      }
      fclose($output);
}

    ?>