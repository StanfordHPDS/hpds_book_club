-- run in terminal:
-- duckdb farmers_market.db

-- Now in DuckDB CLI
CREATE TABLE booth AS SELECT * FROM read_csv_auto('booth.csv');
CREATE TABLE product_category AS SELECT * FROM read_csv_auto('product_category.csv');
CREATE TABLE customer AS SELECT * FROM read_csv_auto('customer.csv');
CREATE TABLE vendor AS SELECT * FROM read_csv_auto('vendor.csv');
CREATE TABLE customer_purchases AS SELECT * FROM read_csv_auto('customer_purchases.csv');
CREATE TABLE vendor_booth_assignments AS SELECT * FROM read_csv_auto('vendor_booth_assignments.csv');
CREATE TABLE market_date_info AS SELECT * FROM read_csv_auto('market_date_info.csv');
CREATE TABLE vendor_inventory AS SELECT * FROM read_csv_auto('vendor_inventory.csv');
CREATE TABLE product AS SELECT * FROM read_csv_auto('product.csv');
CREATE TABLE zip_data AS SELECT * FROM read_csv_auto('zip_data.csv');
