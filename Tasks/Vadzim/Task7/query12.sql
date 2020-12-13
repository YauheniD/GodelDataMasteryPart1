--Query 12
UPDATE tempdb.dbo.Product
SET ListPrice =  pp.ListPrice
OUTPUT
    INSERTED.ProductID AS Inserted,
    DELETED.ProductID AS Deleted
FROM tempdb.dbo.Product AS p
JOIN AdventureWorks2019.Production.Product AS pp 
    ON(p.ProductID = pp.ProductID)
WHERE p.ModifiedDate != pp.ModifiedDate
;
