CREATE PROCEDURE [dbo].[spProduct_ReadAll]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT [ProductId], [ProductCategoryId], [Name], [Quantity], [Value], [Unit], [Price], [CreatedAt], [UpdatedAt] 
    FROM [dbo].[Product];
END