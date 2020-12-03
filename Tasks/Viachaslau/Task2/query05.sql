SELECT EMP.BusinessEntityID,
       P.LastName,
       CASE 
              WHEN PPHONE.PhoneNumberTypeID = 1
                   THEN PPHONE.PhoneNumber
              ELSE NULL
              END AS PhoneNumber
FROM HumanResources.Employee AS EMP
LEFT JOIN Person.Person AS P
       ON P.BusinessEntityID = EMP.BusinessEntityID
LEFT JOIN Person.PersonPhone AS PPHONE
       ON PPHONE.BusinessEntityID = P.BusinessEntityID
WHERE P.PersonType IN ('EM','SP')
ORDER BY EMP.BusinessEntityID
;
