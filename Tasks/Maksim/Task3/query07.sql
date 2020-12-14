--Query  7
SELECT DISTINCT
      customer.CustomerID,
       product.Name
FROM Sales.Customer customer
INNER JOIN Sales.SalesOrderHeader SOH
        ON customer.CustomerID = SOH.CustomerID
INNER JOIN Sales.SalesOrderDetail SOD 
        ON SOH.SalesOrderID = SOD.SalesOrderID
INNER JOIN Sales.SpecialOfferProduct SOP 
        ON SOP.SpecialOfferID = SOD.SpecialOfferID AND SOP.ProductID = SOD.ProductID
INNER JOIN Production.Product product
        ON SOP.ProductID = Product.ProductID
WHERE product.Name= 'Mountain-300 Black, 48'
ORDER BY customer.CustomerID
;
