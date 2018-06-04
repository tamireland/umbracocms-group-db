CREATE PROC [dbo].[usp_CustomerDelete] 
    @CustomerID nchar(10)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Customer]
	WHERE  [CustomerID] = @CustomerID

	COMMIT
