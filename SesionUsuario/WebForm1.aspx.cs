using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesionUsuario
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Calendario.Visible = false;
            }

            txtRO.Text = "Hola a todos";

            txtMultiline.Focus();
            Response.Write("La cantidad de aplicaciones instanciadas son :" + Application["Aplicaciones"] + "</br>");
            Response.Write("La cantidad de sesiones iniciadas son :" + Application["SesionesUsuario"]+ "<br>" );
        }

       

        protected void btnProcesa_Click(object sender, EventArgs e)
        {
            if (rbtnPizza.Checked == true)
            {
                Response.Write("Recomiendo la de cuatro quesos <br>");
            }
            if (rbtnFrutas.Checked == true)
            {
                Response.Write("Recomiendo una manzanas <br>");
            }
            if (rbtnVerduras.Checked == true)
            {
                Response.Write("Recomiendo espinacas <br>");
            }
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            Calcular();
        }

        private void Calcular()
        {
            int cantidad = Convert.ToInt32(txtTotalPagar.Text);


            if (cbxPapas.Checked == true)
            {
                cantidad += 50;
            }

            if (cbxQueso.Checked == true)
            {
                cantidad += 30;
            }
            if (cbxBebida.Checked == true)
            {
                cantidad += 100;
            }

            lblTotal.Text = "$" + cantidad.ToString();
        }

        protected void btnPrueba_Click(object sender, EventArgs e)
        {
            lblIndice.Text = ddlFrutas.SelectedIndex.ToString();
            lblValor.Text = ddlFrutas.SelectedValue.ToString();
            lblSeleccionado.Text = ddlFrutas.SelectedItem.ToString();
        }

        protected void btnCalendario_Click(object sender, EventArgs e)
        {
            Calendario.Visible = !Calendario.Visible;
        }

        protected void Calendario_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = Calendario.SelectedDate.ToShortDateString();
        }
    }
}