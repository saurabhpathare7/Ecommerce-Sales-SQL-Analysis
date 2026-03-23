-- ============================================
-- E-Commerce Sales Analysis Project (SQL)
-- Author: Saurabh Pathare
-- Description: This project analyzes sales data
-- using SQL to generate business insights.
-- ============================================


-- ============================================
-- 🔹 STEP 1: Data Cleaning
-- Remove invalid records for accurate analysis
-- ============================================

-- Remove records with negative or zero quantity
DELETE FROM orders_sample
WHERE quantity <= 0;

-- Remove records with zero or negative price
DELETE FROM orders_sample
WHERE unit_price <= 0;


-- ============================================
-- 🔹 STEP 2: Create Sales View
-- Add calculated column (Revenue)
-- ============================================

CREATE VIEW sales_data AS
SELECT 
    *,
    (quantity * unit_price) AS revenue
FROM orders_sample;


-- ============================================
-- 🔹 STEP 3: Total Revenue
-- Calculate overall business revenue
-- ============================================

SELECT 
    SUM(revenue) AS total_revenue
FROM sales_data;


-- ============================================
-- 🔹 STEP 4: Top Selling Products
-- Identify most sold products
-- ============================================

SELECT 
    description,
    SUM(quantity) AS total_sold
FROM sales_data
GROUP BY description
ORDER BY total_sold DESC
LIMIT 10;


-- ============================================
-- 🔹 STEP 5: Top Revenue Products
-- Products generating highest revenue
-- ============================================

SELECT 
    description,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY description
ORDER BY total_revenue DESC
LIMIT 10;


-- ============================================
-- 🔹 STEP 6: Revenue by Country
-- Analyze sales by geographic location
-- ============================================

SELECT 
    country,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY country
ORDER BY total_revenue DESC;


-- ============================================
-- 🔹 STEP 7: Monthly Revenue Trend
-- Identify sales trends over time
-- ============================================

SELECT 
    DATE_FORMAT(invoice_date, '%Y-%m') AS month,
    SUM(revenue) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;


-- ============================================
-- 🔹 STEP 8: Top Customers
-- Identify high-value customers
-- ============================================

SELECT 
    customer_id,
    SUM(revenue) AS total_spent
FROM sales_data
WHERE customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;


-- ============================================
-- 🔹 STEP 9: Product Ranking (Advanced)
-- Rank products based on sales
-- ============================================

SELECT 
    description,
    SUM(quantity) AS total_sales,
    RANK() OVER (ORDER BY SUM(quantity) DESC) AS rank_no
FROM sales_data
GROUP BY description;


-- ============================================
-- 🔹 END OF PROJECT
-- ============================================