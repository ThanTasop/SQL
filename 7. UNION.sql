SELECT *
FROM city;

SELECT *
FROM country;

-- to query afto metraei ton megisto pluthismo polhs kathe xwras, 
-- opote ton kanw JOIN ton pinaka afton ston katw main kwdika
-- enwnontas ton MAX plithusmo me kathe xwra
SELECT ctr.Name, MAX(c.Population) as Population
	FROM city c JOIN country ctr ON c.CountryCode = ctr.Code
	GROUP BY ctr.Name;
    
-- o pinakas aftos dialegei tis xwres me tis prwtevouses ean omws oi prwt uparxoun
SELECT ctr.Name as Country, c.Name as City, c.Population, "Capital" as Description
FROM city c JOIN country ctr ON c.CountryCode = ctr.Code
WHERE ctr.Capital = c.ID;

-- o pinakas aftos kanei to idio me ton apo panw alla vazei kai tis xwres pou dn exoun
-- prwtevousa me NULL stis adistoixes theseis
SELECT ctr.Name as Country, c.Name as City, c.Population, "Capital" as Description
FROM country ctr LEFT JOIN city c ON ctr.Capital = c.ID;

-- o pinakas aftos vriskei tis megaluteres polois twn xwrwn alla xwris ta NULL an den uparxoun
SELECT ctr.Name as Country, c.Name as City, c.Population, "Largest City" as Description
FROM country ctr JOIN city c ON c.CountryCode = ctr.Code 
	JOIN (SELECT ctr.Name as Name, MAX(c.Population) as Population
	FROM city c JOIN country ctr ON c.CountryCode = ctr.Code
	GROUP BY ctr.Name) mpop ON ctr.Name = mpop.Name;

-- to query afto kanei to idio me ton panw pinaka alla mazi me ta NULL an den uparxoun oi antis. polois
SELECT ctr.Name as Country, c.Name as City, MAX(c.Population), "Largest City" as Description
FROM country ctr LEFT JOIN city c ON ctr.Code = c.CountryCode
GROUP BY ctr.Code;



-- to main query
SELECT ctr.Name as Country, c.Name as City, c.Population, "Capital" as Description
FROM country ctr LEFT JOIN city c ON ctr.Capital = c.ID
UNION
SELECT ctr.Name as Country, c.Name as City, MAX(c.Population) as Population, "Largest City" as Description
FROM country ctr LEFT JOIN city c ON ctr.Code = c.CountryCode
GROUP BY ctr.Code
ORDER BY 1, 4;



        
SELECT ctr.Name as Country, c.Name as City, MAX(c.Population), "Largest City" as Description
FROM country ctr JOIN city c ON ctr.Code = c.CountryCode
GROUP BY ctr.Code;

-- afto to pragma epitrepei sto parapanw query na epilegei o pinakas c.Name me tis adistoixes
-- epiloges tou aggregate functions me to GROUP BY clause
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));







