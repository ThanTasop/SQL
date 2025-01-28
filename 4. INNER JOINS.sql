SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM film_actor;

SELECT CONCAT(a.first_name, ' ',a.last_name) AS Actor, COUNT(*) AS Movies
FROM film_actor fa JOIN film f ON fa.film_id = f.film_id
JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY Movies DESC;

-- einai to idio me to panw en telh 
-- an thelame kai kamia plhroforia gia tis tainies to panw tha douleve mono
SELECT CONCAT(a.first_name, ' ',a.last_name) AS Actor, COUNT(*) AS Movies
FROM film_actor fa JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY Movies DESC;
 
SELECT f.title, f.description, f.release_year, f.rating, f.length, f.replacement_cost, c.name as genre
FROM film f JOIN film_category fc ON f.film_id = fc. film_id
JOIN category c ON fc.category_id = c.category_id
WHERE f.rating NOT IN ("R", "NC-17") AND f.length BETWEEN 60 and 90
AND f.description REGEXP 'boring|love|documentary' AND f.replacement_cost <= 14
AND c.name IN ("Travel", "Family", "Classics", "Comedy");

SELECT *
FROM actor;

SELECT *
FROM film_category;


-- tha borouse na ginei kai me DISTINCT c.name adi gia GROUP BY c.name
SELECT c.name, COUNT(*)
FROM film f JOIN film_actor fa ON f.film_id = fa.film_id
	JOIN actor a ON fa.actor_id = a.actor_id
	JOIN film_category fc ON f.film_id = fc.film_id
	JOIN category c ON fc.category_id = c.category_id
WHERE a.first_name = "Julia" and a.last_name = "Fawcett"
GROUP BY c.name












