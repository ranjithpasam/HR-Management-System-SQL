USE HRManagementDB;
GO

CREATE FUNCTION fn_TotalPayroll()
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @TotalPayroll DECIMAL(12,2);

    SELECT @TotalPayroll = SUM(NetSalary)
    FROM Payroll;

    RETURN ISNULL(@TotalPayroll, 0);
END;
GO


--------------------------------------------------
Example
----------------------------------------------------
SELECT dbo.fn_TotalPayroll() AS TotalPayroll;
----------------------------------------------------
