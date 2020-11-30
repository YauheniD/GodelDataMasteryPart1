SELECT a.CustomerID,
       a.CustomerFullName,
       a.[Has Orders in 2013]
FROM (
       SELECT Sales.Customer.CustomerID,
              CASE 
                     WHEN Person.Person.MiddleName IS NULL
                            AND Person.Person.FirstName IS NOT NULL
                            THEN CONCAT (
                                          Person.Person.FirstName,
                                          ' ',
                                          Person.Person.LastName
                                          )
                     WHEN Person.Person.MiddleName IS NOT NULL
                            THEN CONCAT (
                                          Person.Person.FirstName,
                                          ' ',
                                          Person.Person.MiddleName,
                                          ' ',
                                          Person.Person.LastName
                                          )
                     END AS CustomerFullName,
              ROW_NUMBER() OVER (
                     PARTITION BY Sales.Customer.CustomerID ORDER BY Sales.Customer.CustomerID
                     ) AS RowNumber,
              CASE 
                     WHEN OrderDate IS NOT NULL
                            THEN 'Yes'
                     ELSE 'No'
                     END AS 'Has Orders in 2013'
       FROM Person.Person
       LEFT JOIN Sales.Customer
              ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
       LEFT JOIN Sales.SalesOrderHeader
              ON Sales.SalesOrderHeader.CustomerID = Sales.Customer.CustomerID
                     AND YEAR(OrderDate) = 2013
       WHERE Person.Person.FirstName = 'Zoe'
       ) AS a
WHERE a.RowNumber = 1
ORDER BY a.CustomerID
;
