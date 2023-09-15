
# Test Task: Non-Unique ID Checker

This repository contains a solution for a test task that focuses on identifying non-unique `id` values within a database table.

## 📋 Problem Description

In a provided database table with potential repetitive `id` values, the main objective is to detect which `id` values occur more than once. Spotting these duplicates is imperative for assuring both database integrity and the correct functioning of applications.

## 🏗️ Setting Up the Table

```sql
#https://docs.digitalocean.com/products/databases/mysql/how-to/set-sql-mode/
SET @ORIG_SQL_REQUIRE_PRIMARY_KEY = @@SQL_REQUIRE_PRIMARY_KEY;
SET SQL_REQUIRE_PRIMARY_KEY = 0;
```

To start working on this task, you'd first need to create the table. Here's the SQL query to set it up:


```sql
CREATE TABLE your_table_name (
    id INT NOT NULL,
    name TEXT
);
```
**Note:** Make sure to replace `your_table_name` with the desired table name.


## 🛠 SQL Query to Find Non-Unique IDs

Below is the SQL query to add some values:

```sql
INSERT INTO `defaultdb`.`your_table_name` (`id`,`name`)VALUES(1,1);
INSERT INTO `defaultdb`.`your_table_name` (`id`,`name`)VALUES(1,1);
INSERT INTO `defaultdb`.`your_table_name` (`id`,`name`)VALUES(1,1);
INSERT INTO `defaultdb`.`your_table_name` (`id`,`name`)VALUES(1,1);

INSERT INTO `defaultdb`.`your_table_name` (`id`,`name`)VALUES(2,2);
INSERT INTO `defaultdb`.`your_table_name` (`id`,`name`)VALUES(2,2);
```


Below is the SQL query crafted to detect non-unique `id` values:

```sql
SELECT id, COUNT(id) 
FROM your_table_name 
GROUP BY id 
HAVING COUNT(id) > 1;
```
**Note:** Ensure you replace `your_table_name` with the actual name of your table.

Once executed, this query will return the `id` values that appear more than once in the table, along with their respective occurrence counts.
