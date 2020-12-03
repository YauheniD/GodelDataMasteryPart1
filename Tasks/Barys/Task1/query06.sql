--Task 6
SELECT [CountryRegionCode],
       CASE
           WHEN [NAME] = 'BELARUS'
             OR [NAME] = 'RUSSIA'
           THEN 'BELARUS/RUSSIA'
           ELSE [NAME]
       END AS [Name]
FROM [Person].[CountryRegion]
WHERE [name] LIKE 'A%'
      OR [name] LIKE 'B%'
      OR [name] LIKE 'R%'
;
