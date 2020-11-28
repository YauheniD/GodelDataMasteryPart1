SELECT BusinessEntityID,
       PhoneNumber,
       PhoneNumberTypeID,
       CASE 
              WHEN PhoneNumberTypeID = 1
                     THEN 'Mobile'
              WHEN PhoneNumberTypeID = 2
                     THEN 'Home'
              WHEN PhoneNumberTypeID >= 3
                     THEN 'Other'
              ELSE NULL
              END AS PhoneType
FROM Person.PersonPhone
WHERE (
              ModifiedDate BETWEEN '01/01/2011'
                     AND '12/31/2011'
              )
       AND PhoneNumber LIKE '%77'
;
