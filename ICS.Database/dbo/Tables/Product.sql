CREATE TABLE [dbo].[Product]
(
    [ProductId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
    [ProductCategoryId] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [Quantity] INT NOT NULL,
    [Value] DECIMAL(19, 4) NOT NULL,    
    [Unit] NVARCHAR(2) CHECK ([Unit] IN ('g', 'ml')),
    [Price] DECIMAL(19, 4) NOT NULL,
    [CreatedAt] DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    [UpdatedAt] DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [FK_Product_ToProductCategory] FOREIGN KEY ([ProductCategoryId]) REFERENCES [ProductCategory]([ProductCategoryId])
);