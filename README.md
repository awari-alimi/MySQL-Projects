# 📊 Sales Data Analysis – SQL Project

## 📁 Project Overview

This project performs a comprehensive analysis of sales data using MySQL. The goal is to uncover key business insights such as revenue trends, top-performing products, customer behavior, and regional performance. The analysis supports data-driven decision-making to optimize sales strategies and improve customer engagement.

## 🛠️ Steps Performed

### 1. Database Setup
- Created a new database: `Sales_Data`
- Loaded and previewed the dataset
- Renamed the table from `sales data` to `sales_data` for easier querying

### 2. Data Cleaning
- Renamed columns to follow `snake_case` naming convention
- Removed rows with missing or invalid values
- Ensured numeric fields were correctly typed and recalculated the `sales` column

### 3. Key Performance Indicators (KPIs)
- Total Revenue
- Average Order Value (AOV)
- Monthly Sales Growth using window functions

### 4. Product Performance
- Identified top 10 products by revenue
- Identified top 10 products by quantity sold

### 5. Customer Behavior
- Analyzed peak purchase hours
- Explored purchase patterns by city and hour

### 6. Regional Performance
- Calculated revenue by city
- Counted orders by region (parsed from address)

### 7. Time-Based Trends
- Monthly revenue trends
- Daily sales trends

## 🧾 Table Schema (After Cleaning)

| Column Name        | Description                                 |
|--------------------|---------------------------------------------|
| `order_id`         | Unique ID for each order                    |
| `product`          | Name of the purchased product               |
| `quantity_ordered` | Number of units ordered                     |
| `price_each`       | Price per unit                              |
| `order_date`       | Date and time of the order                  |
| `purchase_address` | Shipping address                            |
| `month`            | Month extracted from `order_date`          |
| `sales`            | Total sales amount (`quantity × price`)    |
| `city`             | City extracted from `purchase_address`     |
| `hour`             | Hour extracted from `order_date`           |

## ✅ Outcome

This analysis provides actionable insights into:

- Sales performance over time
- Customer purchasing patterns
- Regional demand
- Product popularity

These insights can help stakeholders make informed decisions to boost revenue and enhance customer satisfaction.
