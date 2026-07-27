USE HRManagementDB;
GO

CREATE PROCEDURE usp_SearchEmployee
(
    @FirstName VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Employees
    WHERE FirstName LIKE '%' + @FirstName + '%';
END;
GO
