using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace ProyectoV1
{
    public class Conexion
    {

        SqlConnection cn = null;
        public SqlConnection Conectar()
        {
            try
            {
                SqlConnection cn = new SqlConnection("Data Source = software2.database.windows.net; Initial Catalog = software2; User ID = software2; Password = software_2");
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                throw ;
            }
        }
    }
}
