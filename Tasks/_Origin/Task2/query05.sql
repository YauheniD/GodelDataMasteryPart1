--Task#5
SELECT
	e.[BusinessEntityID],
	p.[LastName],
	[PhoneNumber] = CASE pnt.[Name] 
                        WHEN 'Cell' THEN PH.[PhoneNumber] 
                        ELSE NULL END 
FROM [HumanResources].[Employee] e
    INNER JOIN [Person].[Person] p ON p.BusinessEntityID = e.BusinessEntityID
    INNER JOIN [Person].[PersonPhone] ph ON ph.[BusinessEntityID] = p.[BusinessEntityID]
    LEFT JOIN [Person].[PhoneNumberType] pnt	ON pnt.[PhoneNumberTypeID] = PH.[PhoneNumberTypeID] AND pnt.[Name] = 'Cell'
ORDER BY p.[BusinessEntityID]
;
