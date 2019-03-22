using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Principal
{
    public class Gestión_Turnos
    {
        public string nombre, msn;
        public int numced;
        public DateTime turno;

        public void Consultar()
        {
            Conexión Objconect = new Conexión();
            SqlCommand con; SqlDataReader Lectura;
            con = new SqlCommand("SP_CONSULTARDATOS", Objconect.connection);
            con.CommandType = CommandType.StoredProcedure;
            con.Parameters.AddWithValue("@PkId", numced);
            Objconect.connection.Open();
            Lectura = con.ExecuteReader();
            if (Lectura.Read() == true)
            {
                nombre = Convert.ToString(Lectura[0]);
                turno = Convert.ToDateTime(Lectura[1]);
                return;
            }
            Objconect.connection.Close();
        }

    }
}