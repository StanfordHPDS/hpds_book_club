
# SQL for Data Scientists: Week 1, "Data Sources"

<!-- badges: start -->
<!-- badges: end -->

This week, we'll read the introduction and the first chapter, "Data Sources". 

## Tasks

- [ ] Read the introduction
- [ ] Read Chapter 1
- [ ] (Optional) [Install DuckDB](https://duckdb.org/docs/installation/) 

## Querying the database using DuckDB

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
  
## Bonus material

### SQL resources

- [SQLBolt: Introduction to SQL](https://sqlbolt.com/lesson/introduction)

