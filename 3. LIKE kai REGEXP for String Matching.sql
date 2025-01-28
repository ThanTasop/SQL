SELECT *
FROM customers
WHERE customerName REGEXP '^B.*Co.|^B.*Co|^B.*Inc.|^B.*Inc';

-- arxizei me B kai periexei Co. h Co h Inc. H inc (to idio kanei kai to apo panw)
SELECT *
FROM customers
WHERE customerName REGEXP '^B.*(Co\\.?|Inc\\.?)';

-- arxizei me fwnien kai exei toulaxiston 7 grammata
SELECT *
FROM customers
WHERE contactLastName REGEXP '^[eyuioa].{6}';

-- elegxos gia egkurothta e-mail....prwta kanoume select * from employees 
-- kai meta ton parakatw kwdika kai ean vgazei ises grammes tote eimaste
-- edaxei...H apla trexw to idio query me NOT kai prepei na vgalei 0
-- grammes
SELECT *
FROM employees    
WHERE email REGEXP '^[[:alpha:]]{2,}@[[:alpha:]]{3,}\\.com$';

SELECT *
FROM employees    
WHERE email NOT REGEXP '^[[:alpha:]]{2,}@[[:alpha:]]{3,}\\.com$';

-- ksekinaei apo fwnien to epwnumo, 
-- to onoma apo l kai to thlefwno periexei to 31 h to 13
SELECT *
FROM employees
WHERE lastName REGEXP '[^eyuioa]{2}' AND 
	firstName REGEXP '^L' AND extension REGEXP '31|13';

SELECT customerNumber, SUM(amount) as TotalAmount 
FROM payments
WHERE checknumber REGEXP '^[[:alpha:]]{2}[[:digit:]]{5}$'
GROUP BY customerNumber
HAVING TotalAmount > 100000
ORDER BY TotalAmount DESC;

SELECT *
FROM payments

