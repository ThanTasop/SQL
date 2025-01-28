-- proionta me times apo ton meso oro sto max
SELECT productName, buyPrice
FROM products
WHERE buyPrice BETWEEN (SELECT AVG(buyPrice) FROM products) 
	  AND (SELECT MAX(buyPrice) FROM products)
ORDER BY buyPrice;

SELECT *
FROM customers;

SELECT *
FROM orders;

SELECT AVG(priceEach) FROM orderdetails;


SELECT c.customerName
FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber
	JOIN orderdetails od ON o.orderNumber = od.orderNumber
    JOIN products p ON p.productCode = od.productCode
WHERE od.priceEach >= (SELECT AVG(buyPrice) FROM products)
GROUP BY c.customerName
ORDER BY c.customerName;






