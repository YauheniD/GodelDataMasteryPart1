SELECT C.CustomerID,
       CASE 
              WHEN PER.MiddleName IS NULL
                   AND PER.FirstName IS NOT NULL
                   THEN CONCAT (
                                 PER.FirstName,
                                 ' ',
                                 PER.LastName
                                )
              ELSE CONCAT (
                            PER.FirstName,
                            ' ',
                            PER.MiddleName,
                            ' ',
                            PER.LastName
                           )
       END AS CustomerFullName,
       PROD.Name AS ProductName
FROM Person.Person AS PER
LEFT JOIN Person.BusinessEntityAddress AS BEA
       ON BEA.BusinessEntityID = PER.BusinessEntityID
LEFT JOIN Person.Address AS A
       ON BEA.AddressID = A.AddressID
LEFT JOIN Person.StateProvince AS SP
       ON A.StateProvinceID = SP.StateProvinceID
LEFT JOIN Person.CountryRegion AS CR
       ON CR.CountryRegionCode = SP.CountryRegionCode
LEFT JOIN Sales.Customer AS C
       ON C.PersonID = PER.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader AS OH
       ON C.CustomerID = OH.CustomerID
LEFT JOIN Sales.SalesOrderDetail AS OD
       ON OD.SalesOrderID = OH.SalesOrderID
LEFT JOIN Production.Product AS PROD
       ON PROD.ProductID = OD.ProductID
WHERE CR.Name = 'France'
       AND PER.MiddleName = 'R'
ORDER BY OH.CustomerID,
       ProductName
;

