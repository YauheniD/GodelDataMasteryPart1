UPDATE tempdb.dbo.Customers
SET StoreName = '<None>'
OUTPUT DELETED.CustomerID,
       DELETED.StoreName AS 'Old Store Name',
       INSERTED.StoreName AS 'New Store Name'
WHERE StoreName IS NULL
;
