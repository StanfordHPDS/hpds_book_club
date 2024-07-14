
# [SQL for Data Scientists](https://sqlfordatascientists.com/)

<!-- badges: start -->
<!-- badges: end -->


From the website description:

>  SQL for Data Scientists is designed to be a learning resource for anyone who wants to become (or who already is) a data analyst or data scientist, and wants to be able to pull data from databases to build their own datasets without having to rely on others in the organization to query the source system and transform it into flat files (or spreadsheets) for them.

> There are plenty of SQL books out there, but many are either written as syntax references or written for people in other roles that create, query from, and maintain databases. However, this book is written from the perspective of a data scientist and is aimed at those who will primarily be extracting data from existing databases in order to generate datasets for analysis.

> I won’t assume that you’ve ever written SQL queries before, and we’ll start with the basics, but I do assume that you have some basic understanding of what databases are and a general idea of how data might be used in reports, analyses, and machine learning algorithms. This book is meant to fill in the steps between finding a database that contains the data you need and starting the analysis. I aim to teach you how to think about structuring datasets for analysis and how to use SQL to extract the data from the database and get it into that form.

*SQL for Data Scientists* (sorry lab pets) is a beginner's guide to creating analytic datasets in SQL. The book uses [MySQL Server](https://dev.mysql.com/downloads/mysql/) and [MySQL Workbench](https://dev.mysql.com/downloads/workbench/), but we don't recommend either. Instead, we included the data files for the book's data base in `data/` as CSV files and as a [DuckDB database](https://duckdb.org/). Alternatively, you might want to explore another loading them into another SQL database type such as BigQuery. There are slight differences across SQL flavors but most of what we learn will transcend those differences, so ultimately it's not so important which approach you use.

So, why DuckDB? Two reasons: 1) it's easy to run locally (either through the `duckdb` [CLI tool](https://duckdb.org/docs/api/cli/overview) or [via R](https://duckdb.org/docs/api/r) or [Python](https://duckdb.org/docs/api/python/overview), making it easy to practice the examples in the book and 2) [it's wildly fast](https://duckdblabs.github.io/db-benchmark/) and might be a useful day to day to for you if you need work with very large local data files. 

Each week is organized as a folder here, which each folder containing information about the week's content. Start by opening `week_1` and checking out the `README`.

In addition to the book, we'll rely on a few other sources:

* [SQLBolt](https://sqlbolt.com/): an browser-based, interactive tutorial for additional practice.
* [DuckDB documentation](https://duckdb.org/docs/sql/introduction): Documentation specific to DuckDB but mostly applicable to other SQL flavors.

You might also like these resources if you want to dive deeper:
* [Mode SQL tutorial](https://mode.com/sql-tutorial): Another popular tutorial for SQL. It's not quite interactive, although they offer a way to load the tutorial database in the browser using their Mode IDE. 
* [Pandas comparison to SQL](https://pandas.pydata.org/docs/getting_started/comparison/comparison_with_sql.html): An introduction to Pandas for SQL users that might be useful from the reverse perspective.
* [Polars SQL interface](https://docs.pola.rs/api/python/stable/reference/sql/python_api.html): query Polars DataFrames with SQL.
* [dbplyr](https://dbplyr.tidyverse.org/index.html) and [duckplyr](https://duckdblabs.github.io/duckplyr/): automatically query databases using dplyr syntax. dbplyr works with many types of DBs while duckplyr is an related project that works specifically well with DuckDB.


