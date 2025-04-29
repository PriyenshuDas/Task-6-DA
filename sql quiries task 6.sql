-- 1. Create database
CREATE DATABASE sales_trends;
USE sales_trends;

-- 2. Create table
CREATE TABLE sales_data (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);

-- 3. Insert updated sample data (20 rows)
INSERT INTO sales_data (order_id, order_date, amount, product_id) VALUES
(2001, '2023-01-10', 220.00, 'PRD01'),
(2002, '2023-01-22', 310.00, 'PRD02'),
(2003, '2023-02-05', 190.00, 'PRD03'),
(2004, '2023-02-18', 230.00, 'PRD01'),
(2005, '2023-03-03', 480.00, 'PRD04'),
(2006, '2023-03-25', 120.00, 'PRD02'),
(2007, '2023-04-02', 410.00, 'PRD05'),
(2008, '2023-04-19', 360.00, 'PRD06'),
(2009, '2023-05-11', 210.00, 'PRD03'),
(2010, '2023-05-30', 275.00, 'PRD01'),
(2011, '2023-06-06', 345.00, 'PRD04'),
(2012, '2023-06-20', 285.00, 'PRD05'),
(2013, '2023-07-09', 305.00, 'PRD06'),
(2014, '2023-07-29', 320.00, 'PRD01'),
(2015, '2023-08-07', 420.00, 'PRD02'),
(2016, '2023-08-25', 195.00, 'PRD04'),
(2017, '2023-09-13', 265.00, 'PRD05'),
(2018, '2023-09-27', 240.00, 'PRD03'),
(2019, '2023-10-08', 330.00, 'PRD06'),
(2020, '2023-10-22', 310.00, 'PRD02');

-- 4. Monthly Revenue and Order Volume Analysis
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

-- 5. Top 3 Months by Revenue
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    sales_data
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;
