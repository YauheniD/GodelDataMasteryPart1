--Query 1
SELECT 
	Title,
	DocumentSummary
FROM Production.Document
ORDER BY
	CASE
        WHEN DocumentSummary IS NULL THEN 1
        ELSE 0
    END,
	Title
;
