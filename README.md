# import-export-csv-php
Simple import and export from phpmyadmin to CSV and vice versa. This is a project that I made but not improved but I feel the need to post it

This is a project using phpmyadmin as localhost
If you know how to work around phpmyadmin then the next thing to do is go to the index webpage.
The important details in this simple interface is the current database and current table. In this, I used sampletest and sample.
Change it first and foremost then click set to save it in the settings. It will lead to an error if database or table doesnt exist/match.

IMPORT FILE
Simply browse for the CSV file you want and before anything else. The table column must be equal to the number of table column in the phpmyadmin table. it will be imported to the current table
(I only made it flexible to databases and tables but I haven't yet found a solution to make it flexible inside the table as well. this is an old project afterall. It also doesnt support excel file, only csv.)

EXPORT FILE
It will export the current table set. You have to change it first before exporting.
