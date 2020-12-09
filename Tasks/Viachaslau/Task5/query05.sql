SELECT P.BusinessEntityID,
       LastName,
       FirstName
FROM Person.Person AS P
INNER JOIN HumanResources.Employee AS E
       ON E.BusinessEntityID = P.BusinessEntityID
INNER JOIN Sales.SalesPerson AS SP
       ON SP.BusinessEntityID = E.BusinessEntityID
EXCEPT
SELECT P.BusinessEntityID,
       LastName,
       FirstName
FROM Person.Person AS P
INNER JOIN HumanResources.Employee AS E
       ON E.BusinessEntityID = P.BusinessEntityID
INNER JOIN Sales.SalesPerson AS SP
       ON SP.BusinessEntityID = E.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS OH
ON OH.SalesPersonID = SP.BusinessEntityID
WHERE YEAR(OH.OrderDate) = 2012
;
