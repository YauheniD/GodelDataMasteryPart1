--Task9
WITH D AS
(
    SELECT TOP 10 *
    FROM dbo.Product
    WHERE 
        Product.FinishedGoodsFlag != 0
        AND
        ListPrice != 0
    ORDER BY ListPrice
)
DELETE FROM D
;
