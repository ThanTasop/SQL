SELECT *
FROM customers;

SELECT *
FROM orderdetails;

SELECT o.orderNumber as order_number, c.customerName as customer_name, 
SUM(od.quantityOrdered*od.priceEach) as total_amount,
CONCAT("Shipped on ", o.shippedDate) as Description
FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber
	JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE o.status = "Shipped"
GROUP BY o.orderNumber
UNION
SELECT o.orderNumber as order_number, c.customerName as customer_name, 
SUM(od.quantityOrdered*od.priceEach) as total_amount,
"Pending.." as description
FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber
	JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE o.status != "Shipped"
GROUP BY o.orderNumber
ORDER BY total_amount DESC;





