USE HRManagementDB;
GO

CREATE FUNCTION fn_DepartmentEmployeeCount
(
    @DepartmentID INT
)
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*)
    FROM Employees
    WHERE DepartmentID = @DepartmentID;

    RETURN @Count;
END;
GO


-------------------------------------------------
Example
------------------------------------------------
SELECT
    DepartmentName,
    dbo.fn_DepartmentEmployeeCount(DepartmentID) AS EmployeeCount
FROM Departments;
--------------------------------------------------
