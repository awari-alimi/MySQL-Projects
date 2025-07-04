-- Step 1: Create a New Database
CREATE DATABASE Sales_Data;
USE Sales_Data;

-- then look over the dataset
SELECT * 
FROM `sales data`;

-- rename table for easy analysis
RENAME TABLE `sales data` TO sales_data;

SELECT * 
FROM sales_data;


ALTER TABLE sales_data
CHANGE `Order ID` order_id VARCHAR(20),
CHANGE `Product` product VARCHAR(100),
CHANGE `Quantity Ordered` quantity_ordered INT,
CHANGE `Price Each` price_each DECIMAL(10,2),
CHANGE `Order Date` order_date DATETIME,
CHANGE `Purchase Address` purchase_address VARCHAR(255),
CHANGE `Month` month INT,
CHANGE `Sales` sales DECIMAL(10,2),
CHANGE `City` city VARCHAR(100),
CHANGE `Hour` hour INT;

-- Remove rows with missing or invalid data:
DELETE FROM sales_data
WHERE order_id IS NULL
OR product IS NULL
OR quantity_ordered IS NULL
OR price_each IS NULL
OR order_date IS NULL
OR purchase_address IS NULL
OR month IS NULL
OR sales IS NULL
OR city IS NULL
OR hour IS NULL;

-- then I look over my dataset
SELECT * 
FROM sales_data;

-- Ensure numeric fields are in the correct format:
UPDATE sales_data
SET quantity_ordered = CAST(quantity_ordered AS UNSIGNED),
    price_each = CAST(price_each AS DECIMAL(10,2)),
    sales = quantity_ordered * price_each;

-- Key Performance Indicators (KPIs)
-- Total Revenue:
SELECT SUM(sales) AS total_revenue
FROM sales_data;

-- Average Order Value (AOV):
SELECT AVG(sales) AS average_order_value
FROM sales_data;

-- Monthly Sales Growth:
SELECT Month,
       SUM(sales) AS monthly_revenue,
       LAG(SUM(sales)) OVER (ORDER BY Month) AS previous_month_revenue,
       ROUND((SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY Month)) / LAG(SUM(sales)) OVER (ORDER BY Month) * 100, 2) AS growth_percentage
FROM sales_data
GROUP BY Month;

-- Top-Performing Products
-- Top 10 Products by Revenue:
SELECT product, SUM(sales) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC
LIMIT 10;

-- Top 10 Products by Quantity Sold:
SELECT product, SUM(quantity_ordered) AS total_units_sold
FROM sales_data
GROUP BY product
ORDER BY total_units_sold DESC
LIMIT 10;

-- Customer Behavior
-- Peak Purchase Hours:
SELECT hour, COUNT(*) AS orders
FROM sales_data
GROUP BY hour
ORDER BY orders DESC;

-- Most Common Purchase Times by City:
SELECT city, hour, COUNT(*) AS orders
FROM sales_data
GROUP BY city, hour
ORDER BY city, orders DESC;

-- Regional Performance
-- Revenue by City:
SELECT city, SUM(sales) AS revenue
FROM sales_data
GROUP BY city
ORDER BY revenue DESC;

-- Orders by Region (Extracted from Address):
SELECT SUBSTRING_INDEX(purchase_address, ',', -2) AS region, COUNT(*) AS orders
FROM sales_data
GROUP BY region
ORDER BY orders DESC;

-- Time-Based Trends
-- Monthly Revenue Trend:
SELECT Month, SUM(sales) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Daily Sales Trend:
SELECT DATE(order_date) AS Day, SUM(sales) AS revenue
FROM sales_data
GROUP BY day
ORDER BY day;

SELECT * 
FROM sales_data;