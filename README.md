###  **E-Commerce Sales Analysis using SQL**



\# Project Overview

This project focuses on analyzing e-commerce sales data using SQL to extract meaningful business insights.  

It includes data cleaning, transformation, and analysis to understand sales performance, customer behavior, and product trends.



---



\# Objectives

\- Analyze overall sales performance  

\- Identify top-selling products  

\- Find high-value customers  

\- Understand country-wise sales distribution  

\- Track monthly revenue trends  



---



\# Tools \& Technologies

\- MySQL  

\- SQL (Joins, Aggregations, Window Functions)  

\- Data Cleaning Techniques  



---



\# Dataset Information

The dataset contains:

\- Invoice Number  

\- Product Code \& Description  

\- Quantity \& Price  

\- Customer ID  

\- Country  

\- Invoice Date  



---



\# Data Cleaning Steps

\- Removed records with negative/zero quantity  

\- Removed records with zero price  

\- Handled missing customer IDs  

\- Converted date format for proper analysis  



---



\# Key Analysis Performed



🔹 Total Revenue

Calculated overall revenue using:

```sql

SELECT SUM(quantity \* unit\_price) FROM orders\_sample;



🔹 Top Selling Products

Identified most sold products based on quantity.



🔹 Top Revenue Products

Analyzed products generating highest revenue.



🔹 Revenue by Country

Compared sales performance across countries.



🔹 Monthly Sales Trend

Tracked revenue growth over time.



🔹 Top Customers

Identified highest spending customers.



🔹 Product Ranking

Used window functions to rank products.

