CREATE PROCEDURE [dbo].[spProduct_Update]
    @ProductId UNIQUEIDENTIFIER,
    @ProductCategoryId UNIQUEIDENTIFIER,
    @Name NVARCHAR(50),
    @Quantity INT,
    @Value DECIMAL(19, 4),
    @Unit NVARCHAR(10),
    @Price DECIMAL(19, 4)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [dbo].[Product]
    SET 
        [ProductCategoryId] = @ProductCategoryId,
        [Name] = @Name,
        [Quantity] = @Quantity,
        [Value] = @Value,
        [Unit] = @Unit,
        [Price] = @Price,
        [UpdatedAt] = GETUTCDATE()
    WHERE [ProductId] = @ProductId
END