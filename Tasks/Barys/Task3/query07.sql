--Query 7
SELECT DISTINCT
    SSOH.CustomerID,
    PR.Name
FROM AdventureWorks2019.Sales.Customer SC
JOIN AdventureWorks2019.Sales.SalesOrderHeader SSOH 
    ON SC.CustomerID=SSOH.CustomerID
JOIN AdventureWorks2019.Sales.SalesOrderDetail SSOD 
    ON SSOD.SalesOrderID=SSOH.SalesOrderID
JOIN AdventureWorks2019.Production.Product PR 
    ON PR.ProductID=SSOD.ProductID
JOIN Sales.SpecialOfferProduct SSOP 
    ON SSOP.SpecialOfferID = SSOD.SpecialOfferID AND SSOP.ProductID = SSOD.ProductID
JOIN Production.Product P
    ON SSOP.ProductID = P.ProductID
WHERE PR.Name = 'Mountain-300 Black, 48'
ORDER BY SSOH.CustomerID
;
