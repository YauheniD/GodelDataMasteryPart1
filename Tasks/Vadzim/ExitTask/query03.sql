--Query 3
SELECT
    ppm.Name AS ProductModelName,
    ppd.Description AS ProductDescription
FROM Production.ProductModel AS ppm 
JOIN Production.ProductModelProductDescriptionCulture AS pppdc 
    ON (ppm.ProductModelID = pppdc.ProductModelID)
JOIN Production.ProductDescription AS ppd 
    ON (pppdc.ProductDescriptionID = ppd.ProductDescriptionID )
WHERE ppm.Name LIKE 'Rear%'
ORDER BY ProductModelName, ProductDescription
;
