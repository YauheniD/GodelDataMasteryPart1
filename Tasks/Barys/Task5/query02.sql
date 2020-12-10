--Task 2
SELECT 
    C.CustomerID,
    P.FirstName,
    P.LastName
FROM Sales.Customer AS C
JOIN Sales.SalesOrderHeader AS SOH
    ON (C.CustomerID = SOH.CustomerID)
JOIN Person.Person AS P
    ON (C.PersonID = P.BusinessEntityID)
WHERE 
    YEAR(OrderDate) = 2012
    AND
    MONTH(OrderDate) = 1
EXCEPT   
SELECT 
    C.CustomerID,
    P.FirstName,
    P.LastName
FROM Sales.Customer AS C
JOIN Sales.SalesOrderHeader AS SOH
    ON (C.CustomerID = SOH.CustomerID)
JOIN Person.Person AS P
    ON (C.PersonID = P.BusinessEntityID)
WHERE 
    YEAR(OrderDate) = 2012
    AND
    MONTH(OrderDate) = 3
;
