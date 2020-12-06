--Query 5
SELECT DISTINCT
    P.BusinessEntityID,
    P.LastName,
    CASE 
        WHEN PT.Name = 'Cell' THEN Ph.PhoneNumber
        ELSE NULL
    END AS PhoneNumber
FROM AdventureWorks2019.Person.Person P
JOIN AdventureWorks2019.Person.PersonPhone Ph 
    ON P.BusinessEntityID = Ph.BusinessEntityID
JOIN AdventureWorks2019.Person.PhoneNumberType PT 
    ON PT.PhoneNumberTypeID = Ph.PhoneNumberTypeID
JOIN AdventureWorks2019.HumanResources.Employee E 
    ON P.BusinessEntityID = E.BusinessEntityID
;
