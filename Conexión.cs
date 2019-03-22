using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

namespace Principal
{
    public class Conexión
    {
        public SqlConnection connection = new SqlConnection("Data Source=LAPTOP-G6JVSJ4O\\SQLEXPRESS;Initial Catalog=dbTurnos;Integrated Security=True");
    }
}