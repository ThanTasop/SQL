SELECT YEAR(orderDate) as Year, MONTHNAME(orderDate) as Month, 
		COUNT(orderNumber) as Orders
FROM orders
WHERE YEAR(orderDate) = 2003
GROUP BY 2
UNION
SELECT YEAR(orderDate) as Year, MONTHNAME(orderDate) as Month,
		COUNT(orderNumber)
FROM orders
WHERE YEAR(orderDate) = 2004
GROUP BY 2
UNION
SELECT YEAR(orderDate) as Year, MONTHNAME(orderDate) as Month, 
		COUNT(orderNumber)
FROM orders
WHERE YEAR(orderDate) = 2005
GROUP BY 2;

-- H alliws me GROUP BY adi gia UNION

SELECT YEAR(orderDate) as Year, MONTHNAME(orderDate) as Month, COUNT(orderNumber) as orders
FROM orders
GROUP BY 1, 2
ORDER BY 1, MONTH(orderDate);

SELECT *
FROM orders;

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));



SELECT orderNumber as id, date_format(orderDate, '%d/%m/%Y') as 'order',
date_format(requiredDate, '%d/%m/%Y') as required, 
date_format(shippedDate, '%a, %D %M %Y') as shipped
FROM orders;


