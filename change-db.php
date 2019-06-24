<?php
include_once("settings.php");

$db=   $_POST['set_db'];
$table=   $_POST['set_table'];

$connect = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE) or
    die("Connection failed: " .mysqli_connect_error());


$myfile = fopen("settings.php", "w") or die("Unable to open file!");
$txt = "

<?php
define('DB_DRIVER', 'mysql');
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', '$db');
define('DB_TABLE', '$table');

";
$write_file = fwrite($myfile, $txt);

fclose($myfile);
header("location:index.php");
?>