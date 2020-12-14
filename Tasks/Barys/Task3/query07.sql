--Query 7
SELECT DISTINCT
    SSOH.CustomerID,
    PR.Name
FROM Sales.Customer SC
JOIN Sales.SalesOrderHeader SSOH 
    ON SC.CustomerID=SSOH.CustomerID
JOIN Sales.SalesOrderDetail SSOD 
    ON SSOD.SalesOrderID=SSOH.SalesOrderID
JOIN Production.Product PR 
    ON PR.ProductID=SSOD.ProductID
JOIN Sales.SpecialOfferProduct SSOP 
    ON SSOP.SpecialOfferID = SSOD.SpecialOfferID AND SSOP.ProductID = SSOD.ProductID
JOIN Production.Product P
    ON SSOP.ProductID = P.ProductID
WHERE PR.Name = 'Mountain-300 Black, 48'
ORDER BY SSOH.CustomerID
;
