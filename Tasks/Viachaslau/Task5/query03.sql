SELECT C.CustomerID,
       P.FirstName,
       P.LastName
FROM Person.Person AS P
INNER JOIN Sales.Customer AS C
       ON P.BusinessEntityID = C.PersonID
INNER JOIN Sales.SalesOrderHeader AS OH
       ON C.CustomerID = OH.CustomerID
WHERE YEAR(OrderDate) = 2012 AND MONTH(OrderDate) = 1
INTERSECT 
SELECT C.CustomerID,
       P.FirstName,
       P.LastName
FROM Person.Person AS P
INNER JOIN Sales.Customer AS C
       ON P.BusinessEntityID = C.PersonID
INNER JOIN Sales.SalesOrderHeader AS OH
       ON C.CustomerID = OH.CustomerID
WHERE YEAR(OrderDate) = 2012 AND MONTH(OrderDate) = 3
;
