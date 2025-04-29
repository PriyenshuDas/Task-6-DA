# 📊 Task 6: Sales Trend Analysis Using SQL Aggregations

## 🎯 Objective
Analyze monthly revenue and order volume using SQL aggregation techniques on a sales dataset.

---

## 🧰 Tools Used
- **SQL Database:** MySQL (compatible with PostgreSQL/SQLite)
- **Commands Used:** `GROUP BY`, `SUM()`, `COUNT(DISTINCT)`, `ORDER BY`, `LIMIT`, `YEAR()`, `MONTH()`

---

## 🗃 Dataset
**Table Name:** `sales_data`

| Column Name | Data Type     | Description                    |
|-------------|---------------|--------------------------------|
| `order_id`  | INT           | Unique ID of the order         |
| `order_date`| DATE          | Date when the order was placed |
| `amount`    | DECIMAL(10,2) | Revenue from the order         |
| `product_id`| VARCHAR(10)   | ID of the product sold         |

---

## 📦 SQL Tasks Performed

### 1. Creating the Database and Table
Created a database and a table `sales_data` to hold order details.

### 2. Inserting Sample Data
Inserted 20 records into the table for analysis.

### 3. Monthly Revenue & Order Volume
Calculated monthly revenue and distinct order volume using aggregate functions.

### 4. Top 3 Months by Revenue
Identified top 3 performing months based on total revenue.

---

## 🔍 Sample Query: Monthly Revenue & Order Volume
```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    sales_data
GROUP BY 
    year, month
ORDER BY 
    year, month;
```

---

## 📚 Learning Outcomes
- Working with aggregate functions: `SUM`, `COUNT`
- Extracting year and month from dates
- Grouping and ordering data
- Identifying high-performing time periods

---

## 📂 Files Included
- `sql_quiries_task_6.sql`: Contains SQL commands to create the database, insert data, and run analysis queries
- `README.md`: This overview file
