SELECT P.BusinessEntityID,
       P.LastName,
       P.FirstName
FROM Person.Person AS P
LEFT JOIN Person.BusinessEntityAddress AS BEA
       ON P.BusinessEntityID = BEA.BusinessEntityID
LEFT JOIN Person.Address AS A
       ON BEA.AddressID = A.AddressID
WHERE A.AddressID IS NULL
       OR BEA.AddressTypeID != 2
ORDER BY P.BusinessEntityID
;
