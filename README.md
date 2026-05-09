# 📊 Sales & Profit Analysis using SQL

## Overview
This project analyzes sales, profit, and discount patterns using SQL on the 
popular Sample Superstore dataset. The goal is to identify loss-making 
products, understand the impact of discounting on profitability, and surface 
actionable business insights through structured queries.

## Dataset
- **Source:** Sample Superstore (single flat table)
- **Records:** 9,994 orders
- **Fields:** Orders, Categories, Sub-Categories, Sales, Profit, Discount, Region

## Tools Used
- MySQL
- MySQL Workbench

## Business Questions Answered
1. What is the total sales and profit across all orders?
2. Which categories and sub-categories are most profitable?
3. How does discounting impact profit margins?
4. Which sub-categories are loss-making?
5. Which regions generate the most profit?
6. What are the top 5 most profitable products?
7. Which sub-categories rank highest and lowest by profit and sales?
8. What is the profit margin by sub-category?
9. Which sub-category has the highest and lowest profit margin?

## Skills Demonstrated
- Aggregate Functions (SUM, AVG, COUNT)
- GROUP BY, HAVING, ORDER BY
- CASE WHEN for discount bucketing
- Window Functions (RANK OVER)
- Subqueries
- Profit Margin Calculations

## Key Insights
- **Profit decreases sharply as discount increases** — orders with 
  discounts above 40% are almost always loss-making
- **Tables and Bookcases** are the biggest loss-making sub-categories
- **High sales does not equal high profit** — Furniture has high sales 
  but the lowest profit of all categories
- **Labels and Paper** have the highest profit margins despite lower sales volume
