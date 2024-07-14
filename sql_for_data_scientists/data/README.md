# Data for the book club

This directory contains the source data and DuckDB database for the Farmers Market data from *SQL for Data Scientists*. If you're using DuckDB, you don't need to do anything. If want to upload the data to another database, the CSV files contain the data for each table.

`create_db.sql` is the set of commands I ran to create the DuckDB database. You don't need to rerun it to use the DB, but it's here for reproducibility and interest.

`query.sql` is an example SQL file to demonstrate loading SQL queries from files into Python or R.
