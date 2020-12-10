--Task 1
WITH Task1 (n)
AS (
    SELECT 1 as num
    UNION ALL
    SELECT n + 1 FROM Task1
    WHERE n < 10)
SELECT n FROM Task1
;
