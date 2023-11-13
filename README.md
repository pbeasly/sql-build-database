# sql-build-database
Postgresql code to create tables and import csv data into a relational database.
Source is from Kaggle, https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database

CSV data is in separate files.  Tables need to be created to match the csv data then import the data.

Script is bike_sales.sql
To run script:
- open SQL shell
- create the database
- run script using
\i 'file-path.sql'

NOTE: change file paths in 'bike_sales.sql' to point to the location of csv files.
