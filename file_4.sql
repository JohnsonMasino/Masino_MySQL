--First let us create a database--
CREATE DATABASE Masino_Company_co_Lmt;

--Let us switch this database--
USE DATABASE Masino_Company_co_Lmt;

--Let us create a table 'customers' in it--
CREATE TABLE customers (
	first_name varchar(10),
	last_name varchar(10),
	address varchar(30),
	phone varchar(20),
	zip real);

--Let us add some data into this table. Notice how values are ordered according to thier columns--
INSERT INTO customers (first_name, last_name, address, phone, zip),
	VALUES ('Johnson', 'Ugwuanyi', 'GRA Enugu', '903-620-6457', '400283'),
	('Eugene', 'Okafor', 'Agbani Enugu', '903-452-6951', '400004'),
	('Cheluchi', 'Ani', 'Agbani Enugu', '812-014-6238', '400004'),
	('Hannah', 'Maduka', 'Abakpa Enugu', '802-275-3292', '400103'),
	('Favour', 'Ugwuanyi', 'Obollo-Afor', '902-102-3591', '412113');
	

--We’ll build a list of customers who live in a specific zip code area say '400004',
--showing their first and last names and phone numbers and listing them
--in alphabetical order by last name.

--A company might want to do this to initiate a marketing campaign to customers
--in this area. In this example, we’ll use zip code 90840. Listed below are the
--refinement steps we take to arrive at the statement that will retrieve what we need.


--Line 1 querry--: retrieves all customers information we have.

SELECT * FROM customers;

--Line 2 querry--: retrieves all customers living in a specified zip code let's say '400004'.
SELECT * FROM customers WHERE zip = '400004';

--Line 3 querry--: retrieves all of these customers' specified columns.
SELECT first_name, last_name, phone FROM customers WHERE zip = '400004';

--Line 4 querry--: retrieves our data in the required order.
SELECT first_name, last_name, phone
	FROM customers
	WHERE zip = '400004'
	ORDER BY first_name ASC, last_name ASC;

--<<Code developed by Masino>>--
