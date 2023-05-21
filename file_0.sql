--Creates a table 'customers' containig some information

CREATE TABLE customer
(
	name CHAR(10) NOT NULL,
	net_worth INT NOT NULL,
	phone INT NOT NULL
	gender ENUM('M','F') DEFAULT 'SEX' NOT NULL,
	state VARCHAR(15) DEFAULT "State" NOT NULL,
	age INT(3) NOT NULL DEFAULT '001',
);

SELECT gender, net_worth, state
FROM customer
WHERE age > 18 AND age < 60
ORDER BY state ASC, gender ASC, net_worth ASC;
