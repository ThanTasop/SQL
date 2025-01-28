SELECT f.title, SUM(i.store_id) as store
FROM film f LEFT JOIN inventory i ON f.film_id = i.film_id
GROUP BY f.film_id
HAVING store IS NULL
ORDER BY 1;

-- metraei tis tainies poy den uparxei uparxei apothema sto magazi
-- alliws to parapanw...episis tha borouse pali me GROUP BY
-- alla adi gia SUM, COUNT(i.inventory_id)
SELECT f.title, i.store_id as store
FROM film f LEFT JOIN inventory i ON f.film_id = i.film_id
WHERE i.store_id is NULL;

SELECT *
FROM inventory;

SELECT *
FROM rental;

-- metraei to plithos twn enoikiasewn pou exoun ginei se kathe tainia
SELECT f.Title, COUNT(r.rental_id) as Total_Rentals
FROM film f LEFT JOIN inventory i ON f.film_id = i.film_id
	LEFT JOIN rental r ON i.inventory_id = r. inventory_id
GROUP BY f.title
ORDER BY 2 DESC;

SELECT *
FROM customer;

SELECT *
FROM payment;

-- oi 10 kaluteroi pelates
SELECT CONCAT(c.first_name, ' ', c.last_name) as Customer, c.Active, c.Email, 
SUM(p.amount) as Total_amount
FROM customer c JOIN payment p ON c.customer_id = p.customer_id
GROUP BY p.customer_id
ORDER BY total_amount DESC
LIMIT 10;

-- oi 100 xeiroteroi pelates
SELECT CONCAT(c.first_name, ' ', c.last_name) as Customer, c.Active, c.Email, 
SUM(amount) as Total_amount
FROM customer c LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY total_amount
LIMIT 100;

SELECT *
FROM country;

SELECT *
FROM customer
WHERE address_id is NULL;

SELECT *
FROM address;

SELECT *
FROM payment;

SELECT *
FROM customer;


-- sunoliko poso eispraksewn apo kathe xwra
SELECT ctr.Country, SUM(p.amount) as Total_Amount
FROM customer c JOIN payment p ON c.customer_id = p.customer_id
	JOIN address a ON c.address_id = a.address_id
    JOIN city ON a.city_id = city.city_id
	RIGHT JOIN country ctr ON city.country_id = ctr.country_id
GROUP BY ctr.country_id
ORDER BY Total_Amount DESC;





