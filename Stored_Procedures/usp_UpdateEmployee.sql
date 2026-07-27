USE HRManagementDB;
GO

CREATE PROCEDURE usp_UpdateEmployee
(
    @EmployeeID INT,
    @Salary DECIMAL(10,2)
)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Employees
    SET Salary = @Salary
    WHERE EmployeeID = @EmployeeID;
END;
GO
