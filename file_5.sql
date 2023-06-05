--We will find the name of customers who live in the same zip
--code area as Johnson Masino. We might start writing this
--query as we would any of the ones that we have already done:

----First, lets find Johnson Masino's zip code assuming 'Johnson'
--and 'Masino' are first and last names respectively...

SELECT zip FROM customers
	WHERE first_name = 'Johnson',
	last_name = 'Masino';

----Let's say this querry returns zip as '400832'----
--We will now find the names of customers living in this same zip code area--
SELECT first_name, last_name FROM customers
	WHERE zip = '400832'
	ORDER BY first_name ASC, last_name ASC;

--Notice that this querry will return all names including 'Johnson Masino' in
--an ascending order--


--------USING SUB QUERRY TO SOLVE THIS PROBLEM--------
SELECT first_name, last_name FROM customers
	WHERE zip = (SELECT zip FROM customers
		WHERE first_name = 'Johnson'
		last_name = 'Masino');

-----Code developed by Masino-----
