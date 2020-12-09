SELECT DISTINCT SP.Name
FROM Person.BusinessEntityAddress AS BEA
INNER JOIN Person.Address AS A
       ON BEA.AddressID = A.AddressID
INNER JOIN Person.StateProvince AS SP
       ON A.StateProvinceID = SP.StateProvinceID
INNER JOIN Purchasing.Vendor AS V
       ON BEA.BusinessEntityID = V.BusinessEntityID

EXCEPT
(
       SELECT DISTINCT SP.Name
       FROM Person.BusinessEntityAddress AS BEA
       INNER JOIN Person.Address AS A
              ON BEA.AddressID = A.AddressID
       INNER JOIN Person.StateProvince AS SP
              ON A.StateProvinceID = SP.StateProvinceID
       INNER JOIN Sales.Customer SC
              ON SC.PersonID = BEA.BusinessEntityID
)
;
