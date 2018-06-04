CREATE PROC [dbo].[usp_CustomerSelect] 
    @CustomerID nchar(10)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [CustomerID], [FirstNames], [KnownAs], [LastName], [DateOfBirth], [Picture], [LandlineNumber], [MobileNumber], [EmailAddress] 
	FROM   [dbo].[Customer] 
	WHERE  ([CustomerID] = @CustomerID OR @CustomerID IS NULL) 

	COMMIT
