create database Elevate_Labs;
use Elevate_Labs;
-- 1. Monthly revenue and order volume (all years, sorted)
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS monthly_revenue,            -- revenue calculation
    COUNT(DISTINCT order_id) AS order_volume   -- order volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year ASC, order_month ASC;      -- sorting by year, then month

-- 2. Monthly results limited to a specific time period (example: only 2023)
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2023       -- limit to year 2023
GROUP BY order_year, order_month
ORDER BY order_year ASC, order_month ASC;

-- 3. Top 3 months by revenue (sorted by revenue descending)
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS monthly_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY monthly_revenue DESC
LIMIT 3;
