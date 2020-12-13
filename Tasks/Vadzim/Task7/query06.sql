--Query 6
UPDATE tempdb.dbo.Customers
SET StoreName = '<None>'
OUTPUT INSERTED.CustomerID,
    DELETED.StoreName AS OldStoreName,
    INSERTED.StoreName AS NewStoreName
WHERE StoreName IS NULL
;
