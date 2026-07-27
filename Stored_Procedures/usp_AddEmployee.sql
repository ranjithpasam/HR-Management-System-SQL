USE HRManagementDB;
GO

CREATE PROCEDURE usp_AddEmployee
(
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @Phone VARCHAR(20),
    @HireDate DATE,
    @Salary DECIMAL(10,2),
    @DepartmentID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Employees
    (
        FirstName,
        LastName,
        Email,
        Phone,
        HireDate,
        Salary,
        DepartmentID
    )
    VALUES
    (
        @FirstName,
        @LastName,
        @Email,
        @Phone,
        @HireDate,
        @Salary,
        @DepartmentID
    );
END;
GO
