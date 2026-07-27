USE HRManagementDB;
GO

CREATE FUNCTION fn_CalculateExperience
(
    @HireDate DATE
)
RETURNS INT
AS
BEGIN
    DECLARE @Years INT;

    SET @Years = DATEDIFF(YEAR, @HireDate, GETDATE());

    RETURN @Years;
END;
GO

-------------------------------------------------------------------------------
  Example
--------------------------------------------------------------------------------
SELECT
    FirstName,
    LastName,
    dbo.fn_CalculateExperience(HireDate) AS ExperienceInYears
FROM Employees;
------------------------------------------------------------------------------
