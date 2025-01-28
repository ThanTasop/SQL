SELECT Language, COUNT(CountryCode) as Countries
FROM countrylanguage
GROUP BY Language
ORDER BY Countries DESC;

SELECT GovernmentForm, COUNT(Name) as Countries, MAX(GNP) as MaxGNP, AVG(LifeExpectancy) as AverageLifeExpectancy, SUM(SurfaceArea) As TotalSurfaceArea
FROM country
GROUP BY GovernmentForm
ORDER BY GovernmentForm;

SELECT GovernmentForm, COUNT(Name) as Countries, MAX(GNP) as MaxGNP, AVG(LifeExpectancy) as AverageLifeExpectancy, SUM(SurfaceArea) As TotalSurfaceArea
FROM country
WHERE Continent = "Europe"
GROUP BY GovernmentForm
ORDER BY GovernmentForm;

SELECT city, COUNT(*) as Customers
FROM customers
WHERE country="USA"
GROUP BY city
HAVING Customers>=2
ORDER BY Customers DESC;

SELECT productVendor as Vendor, SUM(buyPrice*quantityInStock) as TotalPrice
FROM products
WHERE quantityInStock>=1
GROUP BY productVendor
HAVING TotalPrice>2500000
ORDER BY Totalprice DESC;

SELECT state, COUNT(*) as Customers
FROM customers
WHERE state IS NOT NULL
GROUP BY state
ORDER BY Customers DESC;





