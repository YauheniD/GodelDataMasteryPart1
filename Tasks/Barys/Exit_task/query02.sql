--Query 2
SELECT
	PM.Name AS ProductModel,
	PD.Description AS ProductDescription
FROM Production.ProductModel PM
JOIN Production.ProductModelProductDescriptionCulture PMPDC
	ON PM.ProductModelID = PMPDC.ProductModelID
JOIN Production.ProductDescription PD
	ON PD.ProductDescriptionID = PMPDC.ProductDescriptionID
WHERE PM.Name LIKE 'Rear%'
ORDER BY 
	PM.Name,
	PD.Description
;
