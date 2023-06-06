-----HOW TO JOIN TWO COLUMNS FROM TWO DIFFERENT TABLES-----
-----Let's say we have tow tables 'customers' and 'staff'-----

--customers table has the following columns:
--first_name (varchar)
--last_name (varchar)
--CustId (int)
--BirthDate (date)

--staff has the following columns:
--first_name (varchar)
--last_name (varchar)
--postal-code (varchar)

-----Let's display the 'first_name'(from customers), 'CustId'(from customers)
-----and 'postal_code'(from staff)
SELECT customers.first_name, customers.CustId, staff.postal_code
	FROM customers
	JOIN staff ON customers.first_name=staff.first_name;

--Code developed by Masino--
