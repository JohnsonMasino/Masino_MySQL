-- Explains subqueries with a piece of code

CREATE TABLE customers
(
	FirstName CHAR(10) NOT NULL,
	LastName CHAR(10) NOT NULL,
	ZipCode INT(8) NOT NULL,
	Salary INT NOT NULL,
	age INT(3) NOT NULL
	sex ENUM('M','F') DEFAULT 'Sex',
)

SELECT cZipCode
FROM customers
WHERE cLastName = 'Ugwuanyi' AND cFirstName = 'Johnson';
