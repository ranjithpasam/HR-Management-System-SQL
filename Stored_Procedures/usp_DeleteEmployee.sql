USE HRManagementDB;
GO

CREATE PROCEDURE usp_DeleteEmployee
(
    @EmployeeID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Employees
    WHERE EmployeeID = @EmployeeID;
END;
GO
