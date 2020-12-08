--Query 4
SELECT
    Name
FROM Person.StateProvince as p
WHERE 
    StateProvinceID IN (SELECT StateProvinceID FROM Person.Address 
        WHERE AddressID IN (SELECT AddressID FROM Person.BusinessEntityAddress AS A 
            WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM Purchasing.Vendor)))
    AND 
    NAME NOT IN (SELECT Name FROM Person.StateProvince
        WHERE StateProvinceID IN (SELECT StateProvinceID FROM Person.Address 
            WHERE AddressID IN (SELECT AddressID FROM Person.BusinessEntityAddress 
                WHERE BusinessEntityID  IN (SELECT BusinessEntityID FROM Person.Person 
                    WHERE BusinessEntityID IN (SELECT PersonID FROM Sales.Customer)))))
;
