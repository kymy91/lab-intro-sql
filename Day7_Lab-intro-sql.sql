#Instructions LabSQL DAY7

-- #Review the tables in the database.
SHOW databases;
USE sakila;
SHOW tables;

-- #Explore tables by selecting all columns from each table or using the in built review features for your client.
#Select one column from a table. Get film titles.
SELECT title
FROM film

-- #Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT DISTINCT(name) AS language_name FROM language;

-- #Using the select statements and reviewing how many records are returned, can you find out how many stores and staff does the company have? Can you return a list of employee first names only?
SELECT COUNT(rental_date) FROM rental;
SELECT COUNT(staff_id) FROM staff;
#Answer 2 staff
SELECT COUNT(*) FROM store; #ACID
#Answer 2 store
SELECT first_name FROM staff;

-- #Bonus: How many unique days did customers rent movies in this dataset?
SELECT DISTINCT (DATE(rental_date)) AS rental_day FROM rental;
#Answer 41



