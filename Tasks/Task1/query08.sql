SELECT BusinessEntityID,
       Name,
       PurchasingWebServiceURL
FROM Purchasing.Vendor
WHERE ModifiedDate BETWEEN '01/01/2011'
              AND '12/31/2011'
ORDER BY CASE 
              WHEN PurchasingWebServiceURL IS NULL THEN 0 
			  ELSE 1
              END DESC,
              PurchasingWebServiceURL ASC
;
