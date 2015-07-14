SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE dbo.Customers(
	CustomerId int identity(1,1) primary key,
	Name varchar(100) NOT NULL,
	Country varchar(50) NOT NULL
)

GO

SET ANSI_PADDING OFF
GO

--INSERT INTO Customers
--SELECT 'John Hammond', 'United States'
--UNION ALL
--SELECT 'Mudassar Khan', 'India'
--UNION ALL
--SELECT'Suzanne Mathews', 'France'
--UNION ALL
--SELECT 'Robert Schidner', 'Russia'


CREATE PROCEDURE dbo.Customers_CRUD
      @Action VARCHAR(10)
      ,@CustomerId INT = NULL
      ,@Name VARCHAR(100) = NULL
      ,@Country VARCHAR(100) = NULL
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT CustomerId, Name, Country
            FROM Customers
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO Customers(Name, Country)
            VALUES (@Name, @Country)
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE Customers
            SET Name = @Name, Country = @Country
            WHERE CustomerId = @CustomerId
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM Customers
            WHERE CustomerId = @CustomerId
      END
END

