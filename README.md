# Elevate_Labs_Task_6
# Sales Trend Analysis Using Aggregations (Task 6 - Data Analyst Internship)

## 📌 Objective
Analyze **monthly revenue** and **order volume** from the given `orders.csv` dataset using SQL aggregations.  
This task demonstrates how to group data by time periods, apply aggregate functions, and extract meaningful insights.

---

## 📂 Dataset
The dataset provided (`orders.csv`) contains the following columns:

- `order_id` → Unique identifier for each order  
- `order_date` → Date of the order  
- `product_id` → Unique identifier of the product  
- `quantity` → Number of items ordered  
- `total_price` → Total revenue for that order  

## 🛠️ Tools
- SQL (MySQL)  
- Dataset: `orders.csv`
- Jupyter Notebook: `Sql-Dataset Connection Using Python`

📊 SQL Queries

## 1. Monthly Revenue and Order Volume

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year ASC, order_month ASC;

## 2. Limit Results to a Specific Time Period (Example: 2023)

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2023
GROUP BY order_year, order_month
ORDER BY order_year ASC, order_month ASC;


## 3. Top 3 Months by Revenue

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS monthly_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY monthly_revenue DESC
LIMIT 3;

✅ Key Learnings

EXTRACT() is used to pull month/year from a date.

SUM(total_price) gives total monthly revenue.

COUNT(DISTINCT order_id) gives unique order volume.

GROUP BY is used for monthly aggregation.

ORDER BY sorts the results by time or revenue.

LIMIT restricts results (e.g., top 3 months or specific years).

**📤 Submission

SQL Script → Sql_script.sql
Dataset → orders.csv
README → this file
Jupyter Notebook python code to connect dataset with sql → Dataset_to_SQL.ipynb
Screenshot of result table → results tables Screenshots.pdf

**

📌 Interview Prep Questions

1. How do you group data by month and year?

2. What’s the difference between COUNT(*) and COUNT(DISTINCT col)?

3. How do you calculate monthly revenue?

4. What are aggregate functions in SQL?

5. How do you handle NULLs in aggregates?

6. What’s the role of ORDER BY and GROUP BY?

7. How do you get the top 3 months by sales?
