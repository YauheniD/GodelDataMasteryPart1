UPDATE tempdb.dbo.Product
SET ListPrice = CASE 
              WHEN ProductSubcategoryID = 1
                     THEN ListPrice + 5
              WHEN ProductSubcategoryID = 2
                     THEN ListPrice + 10
              WHEN ProductSubcategoryID = 3
                     THEN ListPrice - 5
              ELSE ListPrice
              END,
       ModifiedDate = CURRENT_TIMESTAMP
WHERE ProductSubcategoryID IN (1, 2, 3)
;
