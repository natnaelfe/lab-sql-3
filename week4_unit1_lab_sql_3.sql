USE sakila;

# 1. How many distinct (different) actors' last names are there?
SELECT COUNT(distinct last_name) 
FROM actor;

# 2. In how many different languages where the films originally produced? (Use the column language_id from the film table)
SELECT COUNT(distinct language_id) 
FROM film;

# 3. How many movies were released with "PG-13" rating?
SELECT count(rating) 
FROM film
WHERE rating = "PG-13";

# 4. Get 10 the longest movies from 2006.
SELECT * 
FROM film
ORDER BY length DESC
LIMIT 10;

# 5. How many days has been the company operating (check DATEDIFF() function)?
SELECT DATEDIFF(MAX(last_update), MIN(rental_date)) AS days_operating
FROM rental;

# 6. Show rental info with additional columns month and weekday. Get 20.
SELECT *, MONTH(rental_date) AS rental_month, WEEKDAY(rental_date) AS rental_weekday
FROM rental
LIMIT 20;

#7. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *, 
    CASE 
        WHEN WEEKDAY(rental_date) IN (5, 6) THEN 'weekend'
        ELSE 'workday'
    END AS day_type
FROM rental
LIMIT 20;

# 8. How many rentals were in the last month of activity?

SELECT * 
FROM rental
ORDER BY rental_date DESC;

SELECT count(*)
FROM rental
WHERE rental_date LIKE "2006-02%";

