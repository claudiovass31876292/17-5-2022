using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


    //NOTAS IMPORTANTES DEL LOGIN.
    //1)Valida correctamente que solo pueda haber una cuenta con el mismo alias.
    //2)Solo valida que entre con la id aunque la contraseña sea cualquier cosa.

    //=======A LA HORA DE REGISTRARSE==============//

    //3)cuando el dni esta duplicado crashea.
    //4)cuando el correo esta duplicado crashea.

//hola ESTE SOY YO(JERE) 123

namespace Vistas.YaMaquetado
{
    public partial class Cuentaa : System.Web.UI.Page
    {
        NegocioCuenta neg = new NegocioCuenta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            NegocioCuenta neg_cue = new NegocioCuenta();
            estado = neg.validarCuenta(txtAlias.Text, txtContrasenia.Text);
            if (estado == true)
            {
                        //una vez validada la existencia de la cuenta hay que validar que nivel tiene la cuenta.
                        //para saber si redireccionar a el apartado de administrado o al apartado de usuario.
                        //ya se redirecciona al lugar correcto.
                Session["Alias"] = txtAlias.Text;
               
                bool nivel = neg_cue.validarnivel(txtAlias.Text, txtContrasenia.Text);
                if (nivel == true)
                {
                    Response.Redirect("AdminProductos.aspx");
                }
                if (nivel == false) {
                    Response.Redirect("Index.aspx");
                }
            }
            else
            {

                lblMensaje.Text = "No se pudo ingresar";

            }
        }

        protected void txtContrasenia_TextChanged(object sender, EventArgs e)
        {

        }
    }
}