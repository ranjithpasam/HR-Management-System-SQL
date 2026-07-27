USE HRManagementDB;
GO

CREATE FUNCTION fn_AnnualSalary
(
    @MonthlySalary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @MonthlySalary * 12;
END;
GO


-------------------------------------------------------------
Example
------------------------------------------------------------
SELECT
    FirstName,
    Salary,
    dbo.fn_AnnualSalary(Salary) AS AnnualSalary
FROM Employees;
---------------------------------------------------------------
