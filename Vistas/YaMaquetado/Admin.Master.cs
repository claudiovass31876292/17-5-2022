using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.YaMaquetado
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Alias"] != null)
            {
                // hay informacion en la variable session

                lblUsuario.Text = Session["Alias"].ToString();

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}