using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using Dao;


namespace Vistas.YaMaquetado
{
    public partial class AdminProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                cargarGridVew();
            }
        }

        public void cargarGridVew()
        {
            DaoProducto GestionProductos = new DaoProducto();
            //obtengo todos los libros y los cargo sobre la grid view
            grdProdAdmin.DataSource = GestionProductos.ObtenerTodosLosProductos();
            grdProdAdmin.DataBind();
        }

        //cuando se hace click sobre el boton selected se ejecuta este evento
        protected void grdProdAdmin_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //se busca los datos en el item template

            String s_codigoArtProducto = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_CodigoArticulo")).Text;
            String s_PuProd = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_PrecioUnitario")).Text;
            String s_Stock = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_Stock")).Text;
            String s_Categoria = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_Categoria")).Text;
            String s_Descripcion = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_Descripcion")).Text;
            String s_Url = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_URL")).Text;

            lblMensaje.Text = "Usted selecciono " + s_codigoArtProducto + " " + s_PuProd + " " + s_Stock + " " + s_Categoria + " " + s_Descripcion + " " + s_Url;
        }

        //EVENTOS QUE SUCEDEN CUANDO EL USUARIO CLIKEA SOBRE EL BOTON ELIMINAR
        protected void grdProdAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //busco el item template id_producto
            String s_codigoArtProducto = ((Label)grdProdAdmin.Rows[e.RowIndex].FindControl("lbl_it_CodigoArticulo")).Text;
           
            Productos prod = new Productos();
            prod.set_codigo_producto(s_codigoArtProducto);
            DaoProducto admProd = new DaoProducto();
         
            admProd.eliminarProducto(prod);

            cargarGridVew();
        }

        protected void grdProdAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            //?????????????????????
          //   grdProdAdmin.PageIndex = e.NewPageIndex();
        }




        protected void grdProdAdmin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //funcion del boton cuando se hace click sobre el boton editar.
            grdProdAdmin.EditIndex = e.NewEditIndex;
            cargarGridVew();

        }

        protected void grdProdAdmin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //cancelar edicion de la grilla
            grdProdAdmin.EditIndex = -1;
            cargarGridVew();
        }

        protected void grdProdAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //cuando se da click sobre el boton actualizar.
            //necesito buscar los datos del edit item template.
            //cargo en strings con el siguiente formato
            //String + (nombre de variable) = (formato del control dibujado)nombre del control[ubicacion del control]("nombre del control").text


           // String s_codigoArtProducto = ((Label)grdProdAdmin.Rows[e.RowIndex].FindControl("lbl_it_CodigoArticulo")).Text;

            String s_codigoArtProducto = ((Label)grdProdAdmin.Rows[e.RowIndex].FindControl("lbl_eit_codart")).Text;
            String s_PuProd = ((TextBox)grdProdAdmin.Rows[e.RowIndex].FindControl("txt_eit_Pu")).Text;
            String s_Stock = ((TextBox)grdProdAdmin.Rows[e.RowIndex].FindControl("txt_eit_Stock")).Text;
            String s_Categoria = ((TextBox)grdProdAdmin.Rows[e.RowIndex].FindControl("txt_eit_Categoria")).Text;
            String s_Descripcion = ((TextBox)grdProdAdmin.Rows[e.RowIndex].FindControl("txt_eit_Descripcion")).Text;
            String s_Url = ((TextBox)grdProdAdmin.Rows[e.RowIndex].FindControl("txt_eit_url")).Text;
            String s_Estado = ((TextBox)grdProdAdmin.Rows[e.RowIndex].FindControl("txt_eit_Estado")).Text;
            
            //acá ya tengo cargada la informacion

            //cargo un articulo con la informacion de la grilla.

            Productos prod = new Productos();
            prod.set_codigo_producto(s_codigoArtProducto);
            prod.set_precio_producto(Convert.ToDecimal(s_PuProd));   
            prod.set_stock(Convert.ToInt32(s_Stock));
            prod.set_categoria(s_Categoria);
            prod.set_descripcion(s_Descripcion);
            prod.set_url_imagen(s_Url);
         

            //tiene 6 campos que cargan un objeto

            DaoProducto admpod = new DaoProducto();
            
            //averiguar como realizar este paso en capas.
            //se necesita un metodo "EditarProducto.
            admpod.actualizar_producto(prod);
            grdProdAdmin.EditIndex = -1;
            cargarGridVew();

        }

        protected void grdProdAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdProdAdmin.PageIndex = e.NewPageIndex;
            cargarGridVew();
        }
    }
}