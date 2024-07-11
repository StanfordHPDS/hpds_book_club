
# SQL for Data Scientists: Week 2, "The `SELECT` Statement"

<!-- badges: start -->
<!-- badges: end -->

### Major commands covered:

- [`SELECT`](https://duckdb.org/docs/sql/statements/select)
- [`LIMIT`](https://duckdb.org/docs/sql/query_syntax/limit)
- [`ORDER BY`](https://duckdb.org/docs/sql/query_syntax/orderby.html)
- [`ROUND()`](https://duckdb.org/docs/sql/functions/numeric#roundv-numeric-s-integer)
- [`CONCAT()`](https://duckdb.org/docs/sql/functions/char#concatstring-) and [string concatenation](https://duckdb.org/docs/sql/functions/char#string--string)
- [`UPPER`](https://duckdb.org/docs/sql/functions/char#upperstring)

## Tasks

- [ ] Read Chapter 2
- [ ] Make sure you have a way to run the SQL commands, e.g. DuckDB (see below)

## Querying the database using DuckDB

There's a copy of the data from the book in the `sql_for_data_scientists/data/` folder. It contains a DuckDB file called `farmers_market.db` with the data loaded as tables. The directory also contains the CSV files used to create the database, in case you want to upload them to another DB. See the `README` in the `sql_for_data_scientists/data/` folder for more information on the DB set up.

### CLI 

In the terminal, run:

```bash
duckdb sql_for_data_scientists/data/farmers_market.db
```

This will open up an interactive CLI where you can enter queries:

```
SELECT *
  FROM product
  LIMIT 5;
```

### R

```r
library(duckdb)
library(dplyr)
library(data.table)

# to connect to the data base
con <- dbConnect(
  duckdb(), 
  dbdir = "sql_for_data_scientists/data/farmers_market.db"
)

# to send a SQL query and return a data.frame
df <- dbGetQuery(
  con, 
  "SELECT *
   FROM product
   LIMIT 5;"
) 

# it's j
# work in base R, tidyverse, or data.table as usual
df[df$product_qty_type == "unit", ]
df |> 
  filter(product_qty_type == "unit")

df <- as.data.table(df)
df[product_qty_type == "unit"]

# to disconnect from the DB
dbDisconnect(con)
```

### Python
  
```python
import duckdb
import polars as pl
import pandas as pd

# connect to the DB
con = duckdb.connect("sql_for_data_scientists/data/farmers_market.db")

# run a command and collect as a polars or pandas DataFrame
query = """SELECT *
   FROM product
   LIMIT 5;"""
con.sql(query)
# duckdb -> polars with tbl.pl()
con.sql(query).pl().filter(pl.col("product_qty_type") == "unit")
# duckdb -> pandas with tbl.df()
con.sql(query).df().query("product_qty_type == 'unit'")

# close the DB connection
con.close()
```
The examples below use string literals for the queries in R and Python. We don't recommend this except for simple queries. Instead, write in a `.sql` file where you can take advantage of code highlighting and friends, as well as avoid annoying text parsing errors. Then, read the text of the file in to run the query, e.g.,

```python
with open('query.sql', 'r') as file:
    sql_script = file.read()

con.execute(sql_script)
```

or 

```r
sql_script <- readLines("sql_for_data_scientists/data/query.sql") |> 
  paste(collapse = "\n")

result <- dbGetQuery(con, sql_script)
```
  
## Bonus material

### SQL resources

- [SQLBolt: SELECT queries 101](https://sqlbolt.com/lesson/select_queries_introduction)

