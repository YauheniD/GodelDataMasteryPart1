SELECT C.CustomerID,
       CASE 
              WHEN P.FirstName IS NULL
                   THEN NULL
              WHEN P.MiddleName IS NULL
                   AND P.FirstName IS NOT NULL
                   THEN CONCAT (
                                 P.FirstName,
                                 ' ',
                                 P.LastName
                                )
              ELSE CONCAT (
                            P.FirstName,
                            ' ',
                            P.MiddleName,
                            ' ',
                            P.LastName
                            )
              END AS CustomerFullName,
       OH.SalesOrderID,
       OH.OrderDate
FROM Sales.SalesOrderHeader AS OH
FULL JOIN Sales.Customer AS C
       ON C.CustomerID = OH.CustomerID
LEFT JOIN Person.Person AS P
       ON P.BusinessEntityID = C.PersonID
WHERE (
       OH.SalesOrderID IS NULL
       OR OH.OrderDate = '01/01/2013'
      )
       AND C.CustomerID IS NOT NULL
ORDER BY C.CustomerID;
