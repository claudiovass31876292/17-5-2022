using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;


namespace Vistas.YaMaquetado
{
    public partial class Registrarse : System.Web.UI.Page
    {
        NegocioClientes neg = new NegocioClientes();
        NegocioCuenta neg2 = new NegocioCuenta();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            //hay que validar que el correo electronico no este en uso por que sino crashea.



            int flag = 0;
            //se usa una bandera para validar que el alias ingresado sea distinto de admin
            if(txtAlias.Text == "admin" || txtAlias.Text =="ADMIN" || txtAlias.Text == "ADMINISTRADOR " ||
                txtAlias.Text == "Administrador")
            {
                flag++;
            }

    

            Boolean estado = false;
        estado = neg.agregarCliente(txtDni.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text, ddlGenero.Text , txtAlias.Text, txtCorreo.Text);

     
            Boolean estado2 = false;
            estado2 = neg2.agregarcuentas(txtCorreo.Text, txtContraseña.Text, txtDni.Text, txtAlias.Text);
            if (estado2 == true && estado == true && flag == 0)
            {
                lblMensaje.Text = "completado con exito";
                Session["Alias"] = txtAlias;

                Response.Redirect("Logiin.aspx");
            }
            else
            {
                if (flag == 1) { lblMensaje.Text = "el uso del alias admin se encuentra restringido , no se ha registrado con exito."; }

                else
                {
                    lblMensaje.Text = "No se ha registrado con exito.";
                }
                
            }
        }
    }
}