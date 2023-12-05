using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace ICS.DataAccess.DbAccess;

public class SqlDataAccess(IConfiguration config) : ISqlDataAccess
{
    public async Task<IEnumerable<T>> LoadData<T, TU>(
        string storedProcedure,
        TU parameters,
        string connectionId = "Default")
    {
        using IDbConnection connection = new SqlConnection(config.GetConnectionString(connectionId));

        return await connection.QueryAsync<T>(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
    }

    public async Task SaveData<T>(string storedProcedure, T parameters, string connectionId = "Default")
    {
        using IDbConnection connection = new SqlConnection(config.GetConnectionString(connectionId));

        await connection.ExecuteAsync(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
    }
}