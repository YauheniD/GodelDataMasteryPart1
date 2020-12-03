--Query 8
SELECT BusinessEntityID,
       Name,
       PurchasingWebServiceURL
FROM Purchasing.Vendor
WHERE YEAR(ModifiedDate) = 2011
ORDER BY CASE
             WHEN PurchasingWebServiceURL IS NULL THEN 1
             ELSE 0
         END,
         PurchasingWebServiceURL
;
