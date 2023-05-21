-- selects some attributes from a table
CREATE TABLE orderlines
(
	custID VARCHAR(5) NOT NULL,
	orderDate NOT NULL,
	unitSalePrice INT(10000) NOT NULL,
	quantity INT(1000),
);

SELECT custID, orderDate, unitSalePrice * quantity
FROM oderlines;
