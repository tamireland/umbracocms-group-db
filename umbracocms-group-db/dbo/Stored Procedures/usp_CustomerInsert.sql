﻿CREATE PROC [dbo].[usp_CustomerInsert] 
    @CustomerID nchar(10),
    @FirstNames nchar(50) = NULL,
    @KnownAs nchar(50) = NULL,
    @LastName nchar(50) = NULL,
    @DateOfBirth date = NULL,
    @Picture image = NULL,
    @LandlineNumber nchar(15) = NULL,
    @MobileNumber nchar(15) = NULL,
    @EmailAddress nchar(30) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Customer] ([CustomerID], [FirstNames], [KnownAs], [LastName], [DateOfBirth], [Picture], [LandlineNumber], [MobileNumber], [EmailAddress])
	SELECT @CustomerID, @FirstNames, @KnownAs, @LastName, @DateOfBirth, @Picture, @LandlineNumber, @MobileNumber, @EmailAddress
	
	-- Begin Return Select <- do not remove
	SELECT [CustomerID], [FirstNames], [KnownAs], [LastName], [DateOfBirth], [Picture], [LandlineNumber], [MobileNumber], [EmailAddress]
	FROM   [dbo].[Customer]
	WHERE  [CustomerID] = @CustomerID
	-- End Return Select <- do not remove
               
	COMMIT
