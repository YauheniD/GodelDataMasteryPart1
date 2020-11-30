--Task 7
SELECT [BusinessEntityID],
       [PhoneNumber],
       [PhoneNumberTypeID],
       CASE [PhoneNumberTypeID]
          WHEN 1 THEN 'Mobile'
          WHEN 2 THEN 'Home'
          ELSE 'Other'
       END AS [PhoneType]
FROM [Person].[PersonPhone]
WHERE YEAR([ModifiedDate]) = 2011
  AND RIGHT([PhoneNumber], 2) = '77'
;
