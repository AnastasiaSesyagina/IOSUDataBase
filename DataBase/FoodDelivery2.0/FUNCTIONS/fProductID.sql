﻿CREATE FUNCTION dbo.fProductID
(
	@ProductName NVARCHAR(50)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Product UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Product
			WHERE MenuName = @ProductName);
	RETURN @ID_Product
END;