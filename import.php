<?php
include("settings.php");
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
$table = DB_TABLE;

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

if(isset($_POST["import"])){

    $filename=$_FILES["uploadCSV"]["tmp_name"];
    if($_FILES["uploadCSV"]["size"] > 0){
        $file = fopen($filename, "r");
        while (($data = fgetcsv($file, 10000, ",")) !== FALSE){
        //conversion of value data to string
        $array1 = implode(",", $data);
        //conversion of value array1 to array
        $myArray = explode(",", $array1);
        $count = sizeof($myArray); //count number of values

            for ($i=0; $i < $count; $i++) {
                $final[$i] = "'".$myArray[$i]."'";
            }

        $myArray = array_filter($final);
        $values =  implode(',', $myArray);
        $sql = "INSERT INTO $table  VALUES ($values)";

        if($conn->query($sql) === TRUE){
            echo "<script>
                window.alert('Data Import Successful.');
                window.location = 'index.php'
                </script>";
        } else {
            echo "<script>
                window.alert('Data Import Failed.');
                window.location = 'index.php'
                </script>";
        }

/*            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }*/
        }
    }
}
fclose($file);
?>