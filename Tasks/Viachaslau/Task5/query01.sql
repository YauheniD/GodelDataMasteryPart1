IF OBJECT_ID(N'tempdb..#Number') IS NOT NULL
BEGIN
       DROP TABLE #Number
END
GO

CREATE TABLE #Number (n INT IDENTITY(1, 1) PRIMARY KEY NOT NULL);
GO

INSERT INTO #Number DEFAULT VALUES 
GO 10