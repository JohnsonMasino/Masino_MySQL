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
