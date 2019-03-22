using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Principal
{
    public partial class Turnos___Consulta : System.Web.UI.Page
    {
        DateTime fecha;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbMensaje.Visible = false;
            btAsigTurno.Visible = false;
            lbTurno.Visible = false;
        }

        public void ConsultarTurnos()
        {

            if (tbCedula.Text == "")
            {
                lbMensaje.Visible = true;
                lbMensaje.Text = "Ingrese número de cedula";
            }
            else
            {
                Gestión_Turnos obj = new Gestión_Turnos();
                obj.numced = Convert.ToInt32(tbCedula.Text);
                obj.Consultar();
                tbNombre.Text = obj.nombre;
                lbTurno.Text = obj.turno.ToString("HH:mm:ss");
                btAsigTurno.Visible = true;
                lbTurno.Visible = true;
            }
        }

        public void Validar()
        {
            fecha = Convert.ToDateTime(tbHLlegada.Text);
            if (Convert.ToDateTime(lbTurno.Text) >= Convert.ToDateTime(fecha.ToString("HH:mm:ss")))
            {
                lbMensaje.Text = "No es posible asigar el turno / No puede ingresar";
            }
            else
            {
                lbMensaje.Text = "Es posible asignar el tunro / Puede ingresar";
            }
            lbMensaje.Visible = true;
            lbTurno.Visible = true;
        }

        protected void btConsultar_Click(object sender, EventArgs e)
        {
            ConsultarTurnos();
        }

        protected void btAsigTurno_Click(object sender, EventArgs e)
        {
            Validar();
            btAsigTurno.Visible = true;
        }
    }
}