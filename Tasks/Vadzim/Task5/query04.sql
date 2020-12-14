--Query 4
(SELECT 
    sc.CustomerID,
    pp.FirstName,
    pp.LastName
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh ON (sc.CustomerID = ssoh.CustomerID)
JOIN Person.Person AS pp ON (sc.PersonID = pp.BusinessEntityID)
WHERE 
    YEAR(OrderDate) = 2012
    AND
    MONTH(OrderDate) = 1
INTERSECT   
SELECT
    sc.CustomerID,
    pp.FirstName,
    pp.LastName
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh ON (sc.CustomerID = ssoh.CustomerID)
JOIN Person.Person AS pp ON (sc.PersonID = pp.BusinessEntityID)
WHERE 
    YEAR(OrderDate) = 2012
    AND
    MONTH(OrderDate) = 3)
EXCEPT 
SELECT
    sc.CustomerID,
    pp.FirstName,
    pp.LastName
FROM Sales.Customer AS sc
JOIN Sales.SalesOrderHeader AS ssoh ON (sc.CustomerID = ssoh.CustomerID)
JOIN Person.Person AS pp ON (sc.PersonID = pp.BusinessEntityID)
WHERE 
    YEAR(OrderDate) = 2013
;
