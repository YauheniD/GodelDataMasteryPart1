--Query 1
DECLARE @Start INT = 1;
DECLARE @End INT = 10;
DECLARE @Step INT = 1;

WITH Task1 (n)
AS (
    SELECT n FROM (SELECT @Start AS n) AS t
    UNION ALL
    SELECT n + @Step FROM Task1
    WHERE n < @End)
SELECT n FROM Task1
;
