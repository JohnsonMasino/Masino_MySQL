--Shows subqueries
SELECT cFirstName, cLastName, cZipCode
        FROM customers
        WHERE cZipCode =        
          (SELECT cZipCode
           FROM customers
           WHERE cFirstName = 'Wayne' AND cLastName = 'Dick');
