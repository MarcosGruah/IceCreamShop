using ICS.DataAccess.DbAccess;
using ICS.DataAccess.Models;

namespace ICS.DataAccess.Data;

public class ProductData(ISqlDataAccess db)
{
    public Task<IEnumerable<ProductModel>> GetProducts()
    {
        return db.LoadData<ProductModel, dynamic>("dbo.spProduct_ReadAll", new { });
    }

    public async Task<ProductModel?> GetProduct(string productId)
    {
        var result =
            await db.LoadData<ProductModel, dynamic>("dbo.spProduct_Read", new { ProductId = productId });
        return result.FirstOrDefault();
    }
}