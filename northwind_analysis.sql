-- #1 Top 10 Best-Selling Products by Revenue

USE northwind;

SELECT
	productName,
    SUM(od.quantity) AS total_units_sold,
    SUM(od.quantity * od.unitprice* (1 - od.discount)) AS total_revenue
FROM orderdetail AS od
JOIN product AS p ON od.productid = p.productid
GROUP BY p.productName
ORDER BY total_revenue DESC
LIMIT 10;

SELECT * FROM northwind.orderdetail LIMIT 3;
SELECT * FROM northwind.product LIMIT 3;


-- #2 Monthly Revenue

SELECT
	YEAR(orderDate) AS `year`,
    MONTH(orderDate) AS `month`,
    SUM(quantity * unitPrice* (1 - od.discount)) AS monthly_revenue
FROM orderdetail AS od
JOIN salesorder AS o ON od.orderId = o.orderId
GROUP BY `year`, `month`
ORDER BY `year`, `month`;

SELECT * FROM orderdetail;


-- #3 Top 10 Customers by Spending

SELECT
	c.companyName,
    COUNT(DISTINCT o.orderid) AS total_orders,
    SUM(od.quantity * od.unitprice * (1 - od.discount)) AS total_spent
FROM orderdetail AS od
JOIN salesorder AS o ON od.orderId = o.orderId
JOIN customer AS c ON o.custId = c.custid
GROUP BY c.companyName
Order BY total_spent DESC
LIMIT 10;

DESCRIBE customer;


-- #4 Revenue by Country
SELECT * FROM orderdetail;

SELECT 
	c.country,
    COUNT(DISTINCT o.orderId) AS total_orders,
    SUM(od.quantity * od.UnitPrice * (1 - od.discount)) AS total_revenue
FROM orderdetail AS od
JOIN salesorder AS o ON od.orderId = o.orderId
JOIN customer AS c ON o.custId = c.custId
GROUP BY country
ORDER BY total_revenue DESC;


-- #5 Average Order Value

SELECT
	ROUND(SUM(od.quantity * od.UnitPrice * (1 - od.discount)) / COUNT(DISTINCT o.orderId), 2) AS avg_order_value
FROM orderdetail AS od
JOIN salesorder AS o ON od.orderID = o.orderID;

-- #6 Revenue by Product Category
DESCRIBE category;


SELECT
	cat.categoryName,
    COUNT(DISTINCT o.orderId) AS total_orders,
    SUM(od.quantity * od.UnitPrice * (1 - od.discount)) AS total_revenue
FROM orderdetail AS od
JOIN salesorder AS o ON od.orderId = o.orderId
JOIN product AS p ON od.productId = p.productId
JOIN category AS cat ON p.categoryid = cat.categoryid
GROUP BY p.categoryid
ORDER BY total_revenue DESC;