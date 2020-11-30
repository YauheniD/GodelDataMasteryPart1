SELECT DISTINCT 
       Sales.Customer.CustomerID,
       CASE 
              WHEN Person.Person.MiddleName IS NULL
                   THEN CONCAT (
                                 Person.Person.FirstName,
                                 ' ',
                                 Person.Person.LastName
                                )
              ELSE CONCAT (
                            Person.Person.FirstName,
                            ' ',
                            Person.Person.MiddleName,
                            ' ',
                            Person.Person.LastName
                           )
              END AS CustomerFullName,
       CASE 
              WHEN OrderDate IS NOT NULL
                   THEN 'Yes'
              ELSE 'No'
              END AS 'Has Orders in 2013'
FROM Person.Person
LEFT JOIN Sales.Customer
       ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader
       ON Sales.SalesOrderHeader.CustomerID = Sales.Customer.CustomerID AND YEAR(OrderDate) = 2013
WHERE Person.Person.FirstName = 'Zoe'
ORDER BY CustomerID
;
