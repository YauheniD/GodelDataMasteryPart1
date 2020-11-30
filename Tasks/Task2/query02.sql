SELECT DISTINCT
       P.BusinessEntityID,
       P.FirstName,
       P.LastName,
       A.City
FROM Person.Person AS P
INNER JOIN Person.BusinessEntityAddress AS BEA
       ON P.BusinessEntityID = BEA.BusinessEntityID
INNER JOIN Person.Address AS A
       ON BEA.AddressID = A.AddressID
WHERE A.City = 'Bellevue'
ORDER BY P.BusinessEntityID
;
