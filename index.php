<?php
include("settings.php");
?>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="bootstrap/style.css">

        <script src="bootstrap/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/jquery.backstretch.min.js"></script>
        <script src="bootstrap/js/scripts.js"></script>
        <title>CSV Import/Export</title>
    </head>

    <body>
<!--          <br><br><br><br><br><br><br><br><br><br> -->

        <div class="container" style="margin-top: 100px;">
             <center><h1>CSV Import/Export</h1></center>
            <div class="col-md-12" >
                <div class="column col-md-12">
                    <br>
                    <form method="post" enctype="multipart/form-data" action="change-db.php">
                        <h4> Configure Database: Set existing database name for CSV Import</h4>
                        <input type="text" class="input_a" name="set_db" value="<?php echo DB_DATABASE; ?>"></input> *Current database: <?php echo DB_DATABASE; ?>
                        <br> <br>
                        <h4>Configure Table: Set existing database table for CSV Import</h4>
                        <input type="text" class="input_a" name="set_table" value="<?php echo DB_TABLE;?>">
                        <button class="btn"  name="submit" type="submit">Set</button>
                        *Current table: <?php echo DB_TABLE;?>
                    </form>
                </div>

                <div class="column col-sm-6">
                        <h3>IMPORT CSV</h3>
                        <h5>3. Import CSV File</h5>
                        <div style= "border: solid #ccc 1px; margin: 15px 13px 13px 13px; padding: 5px 0 10px 0; ">
                            <form  method="post" enctype="multipart/form-data" action="import.php">
                                <center>
                                <input type="file" name="uploadCSV"><br><button  type="submit"  name="import" class="btn" >IMPORT FILE</button>
                                </center>
                            </form>
                        </div>
                    </div>

                <div class="column col-sm-6">
                        <h3>EXPORT CSV</h3>
                        <br>
                        <br>
                    </form>
                         <h5>3. Export Table to CSV</h5>
                        <center>
                        <form  method="post" id="exp" enctype="multipart/form-data" action="export.php">
                            <br> <br> <br><br><br><br>
                            <input type="text" name="table" value="<?php echo DB_TABLE;?>" hidden>
                        <button type="submit"  class="btn" name="submit" value="submit">EXPORT TO CSV FILE
                        </button>
                            </center>
                    <br><br><br><br>
                </div>
            </div>
    </body>
</html>