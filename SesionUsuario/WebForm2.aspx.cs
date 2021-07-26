using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SesionUsuario
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPostback_Click(object sender, EventArgs e)
        {
            lblMensajePB.Text = "Ocurrio el evento Postback";
        }
       

        protected void txtCached_TextChanged(object sender, EventArgs e)
        {
            lblCached.Text = "Ocurrio el evento Cached";
        }
    }
}