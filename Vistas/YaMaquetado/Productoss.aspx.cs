using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.YaMaquetado
{
    public partial class Productoss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.Visible = true;
            ListView2.Visible = false;
        }


        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
       
            ListView1.Visible = false;
            ListView2.Visible = true;
            //tengo que tomar la busqueda y enviarla a negocio y de negocio a dao y traer devuelta todo.

            //SELECT [Stock], [PU_Pro], [Descripcion], [url], [Categoria] FROM [Productos] where  [Estado] = 'True'



            //sqlDataSource1.SelectCommand = "SELECT [Stock], [PU_Pro], [Descripcion], " +
            //  "[url], [Categoria] FROM [Productos] where Estado = 1 and Descripcion like '%lad%';


            // SE NECESITA ADAPTAR LA SIGUIENTE CONSULTA SELECT [Stock], [PU_Pro], [Descripcion], [url], [Categoria] FROM [Productos] where  [Estado] = 'True' and Descripcion like '%rev%'
            // REV TIENE QUE SER EL TEXTO INGRESADO EN EL TXTBUSCAR.
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}