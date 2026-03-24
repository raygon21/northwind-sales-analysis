# northwind-sales-analysis

## Overview
Sales analysis of Northwind's database using MySQL. To uncover key business insights, this 
project takes a look at sales trends, customer behavior, and product performance.

## Tools Used
- MySQL
- MySQL Workbench

## Database Information
The Northwind database is a sample of data representing a wholesale food supplier with customers
within 21 countries. The data consists of orders, products, custmers, and employees from a span 
of 2 years of sales data (July 2006 - May 2008).

## Business Questions Answered
1. What are the top 10 best-selling products by revenue?
2. How did revenue trend month over month?
3. Who are the top 10 customers by total spending?
4. Which countries generate the most value?
5. What is the average order value?
6. Which product categories drive the most revenue?

## Key Findings
- Beverages is the top revenue category at $267,868
- USA and Germany are the top two markets, similarly close ~$244-$263k
- From mid-2006 to early 2008, revenue grew over 4x
- Average order value is $1,525
- Customer IRRVL is the highest spender at $117,483 from 28 orders
- Discounts were factored into all revenue calculations

## SQL Concepts USed
- JOINs across different tables
- Aggregate functions (SUM, COUNT, ROUND)
- GROUP BY and ORDER BY
- DATE FUNCTIONS (YEAR, MONTH)
