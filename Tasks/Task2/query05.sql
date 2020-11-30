SELECT HumanResources.Employee.BusinessEntityID,
       Person.Person.LastName,
       CASE 
              WHEN Person.PersonPhone.PhoneNumberTypeID = 1
                     THEN Person.PersonPhone.PhoneNumber
              WHEN Person.PersonPhone.PhoneNumberTypeID != 1
                     THEN NULL
              END AS PhoneNumber
FROM HumanResources.Employee
LEFT JOIN Person.Person
       ON Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID
LEFT JOIN Person.PersonPhone
       ON Person.PersonPhone.BusinessEntityID = Person.Person.BusinessEntityID
WHERE Person.Person.PersonType IN (
              'EM',
              'SP'
              )
ORDER BY HumanResources.Employee.BusinessEntityID
;
