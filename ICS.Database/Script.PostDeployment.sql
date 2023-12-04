IF (NOT EXISTS (SELECT 1 FROM [dbo].[ProductCategory]) OR NOT EXISTS (SELECT 1 FROM [dbo].[Product]))
BEGIN
    DELETE FROM [dbo].[Product];
    DELETE FROM [dbo].[ProductCategory];

    INSERT INTO [dbo].[ProductCategory]([ProductCategoryId],[Name])
    VALUES 
        ('71F650B7-8C91-11EC-B695-005056C00008', 'Ice Cream Flavors'),
        ('71F650B8-8C91-11EC-B695-005056C00008', 'Beverages');

    INSERT INTO [dbo].[Product]([ProductCategoryId], [Name], [Quantity], [Value], [Unit], [Price])
    VALUES
        ('71F650B7-8C91-11EC-B695-005056C00008', 'Vanilla', 1, 710, 'g', 29.99),
        ('71F650B7-8C91-11EC-B695-005056C00008', 'Chocolate', 1, 710, 'g', 29.99),
        ('71F650B7-8C91-11EC-B695-005056C00008', 'Strawberry', 1, 710, 'g', 30.99),
        ('71F650B8-8C91-11EC-B695-005056C00008', 'Coca Cola', 1, 310, 'ml', 5.99),
        ('71F650B8-8C91-11EC-B695-005056C00008', 'Green Tea', 1, 400, 'ml', 3.99),
        ('71F650B8-8C91-11EC-B695-005056C00008', 'Orange Juice', 1, 410, 'ml', 6.99);
END