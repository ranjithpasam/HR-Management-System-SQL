USE HRManagementDB;
GO

CREATE FUNCTION fn_FullName
(
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50)
)
RETURNS VARCHAR(101)
AS
BEGIN
    RETURN @FirstName + ' ' + @LastName;
END;
GO


----------------------------------------------------------
Example
------------------------------------------------------------
SELECT
    dbo.fn_FullName(FirstName, LastName) AS FullName
FROM Employees;
----------------------------------------------------------
