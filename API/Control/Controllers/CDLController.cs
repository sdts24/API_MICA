using Control.Models;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Control.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CDLController : ControllerBase
    {

        private readonly ConnectionStrings _connectionStrings;

        public CDLController(ConnectionStrings connectionStrings)
        {
            _connectionStrings = connectionStrings;
        }

        // GET: api/ObtenerCDLs>
        [HttpGet("ObtenerCDLs")]
        public List<CDL> ObtenerCDLs()
        {
            List<CDL> cDLs = new List<CDL>();
            var cn = _connectionStrings.CnSqlServer;
            var conexion = new SqlConnection(cn);
            var sql = "EXEC LeerTodosCDLs";
            try
            {

                conexion.Open();

                cDLs = conexion.Query<CDL>(sql).ToList();

            }
            catch (Exception ex)
            {
                return new List<CDL>();
            }
            finally
            {
                conexion.Close();
            }
            
            return cDLs;
        }

        // GET api/ObtenerUnaCDL/5
        [HttpGet("ObtenerUnaCDL")]
        public List<CDL> ObtenerUnaCDL(int id)
        {
            //var cdl = new CDL();
            List<CDL> cdl = new List<CDL>();
            var cn = _connectionStrings.CnSqlServer;
            var conexion = new SqlConnection(cn);
            var sql = "LeerCDLPorID";

            //Set up DynamicParameters object to pass parameters  
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("ID", id);

            try
            {
                conexion.Open();
                cdl = conexion.Query<CDL>(sql, parameters, commandType: CommandType.StoredProcedure).ToList(); 

            }
            catch (Exception ex)
            {
                return cdl;
            }
            finally
            {
                conexion.Close();
            }

            return cdl;
        }

        // POST api/CrearCDL
        [HttpPost("CrearCDL")]
        public bool Post(CDL cdl)
        {
            var cn = _connectionStrings.CnSqlServer;
            var conexion = new SqlConnection(cn);
            var sql = "InsertarCDL";

            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("Nombre", cdl.Nombre);

            try
            {

                conexion.Open();
                conexion.QuerySingleOrDefault<CDL>(sql, parameters, commandType: CommandType.StoredProcedure);

            }
            catch (Exception ex)
            {
                return false;
            }
            finally { conexion.Close(); }


            return true;

        }

        // PUT api/<CDLController>/5
        [HttpPut("ActualizarUnaCDL")]
        public bool Put(int id, CDL cdl)
        {
            var cn = _connectionStrings.CnSqlServer;
            var conexion = new SqlConnection(cn);
            var sql = "ActualizarCDL";

            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("ID", id);
            parameters.Add("Nombre", cdl.Nombre);

            try
            {

                conexion.Open();
                conexion.QuerySingleOrDefault<CDL>(sql, parameters, commandType: CommandType.StoredProcedure);

            }
            catch (Exception ex)
            {
                return false;
            }
            finally { conexion.Close(); }

            return true;
        }

        // DELETE api/<CDLController>/5
        [HttpDelete("EliminarUnaCDL")]
        public void Delete(int id)
        {

        }
    }
}
