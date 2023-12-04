CREATE PROCEDURE [dbo].[spProduct_Delete]
    @ProductId UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;
    DELETE
    FROM [dbo].[Product]
    WHERE [ProductId] = @ProductId;
END