SELECT SUM(quantityOrdered*priceEach) as Total
FROM orderdetails
WHERE orderNumber BETWEEN 10100 AND 10199;

SELECT productName as "Product Name", buyPrice
FROM products
WHERE productLine IN ("Vintage Cars", "Planes") AND productScale IN ("1:18", "1:32", "1:50")
ORDER BY buyPrice DESC
LIMIT 5;

SELECT city, phone, postalCode
FROM offices
WHERE state IS NULL