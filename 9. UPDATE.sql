SELECT *
FROM customers;

SELECT *
FROM employees;

-- 1401
SELECT employeeNumber
FROM employees
WHERE lastName = 'Castillo' AND firstName = 'Pamela';

-- 1002
SELECT employeeNumber
FROM employees
WHERE lastName = 'Murphy' AND firstName = 'Diane';

CREATE TABLE copy_customers AS
SELECT * FROM customers;

SELECT *
FROM customers
WHERE salesRepEmployeeNumber = 1401 OR salesRepEmployeeNumber = 1002;

UPDATE copy_customers
SET salesRepEmployeeNUmber = 1002
WHERE salesRepEmployeeNumber = 1401;

SELECT *
FROM copy_customers
WHERE salesRepEmployeeNumber = 1401 OR salesRepEmployeeNumber = 1002;

DROP TABLE copy_customers;



-- ALLH ASKHSH


SELECT *
FROM country;

SELECT *
FROM city;

CREATE TABLE copy_country AS
SELECT * FROM country;

CREATE TABLE copy_city AS
SELECT * FROM city;

UPDATE copy_city
SET CountryCode = 'BIM'
WHERE CountryCode = 'BRB';

UPDATE copy_country
SET Code = 'BIM', Name = 'Bim'
WHERE Code = 'BRB';

DROP TABLE copy_country;
DROP TABLE copy_city;















