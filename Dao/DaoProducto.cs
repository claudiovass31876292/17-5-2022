using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;


namespace Dao
{
    public class DaoProducto
    {
        AccesoDatos ds = new AccesoDatos();
        public Productos getProducto(Productos pro)
        {
            DataTable tabla = ds.ObtenerTabla("Producto", "Select * from producto where IdProducto=" + pro.get_codigo_producto());
            //pro.set_codigo_producto(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            pro.set_codigo_producto(tabla.Rows[0][1].ToString());
            pro.set_nombre_producto(tabla.Rows[0][2].ToString());
            return pro;
        }


        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }

        public Boolean existeProducto(Productos pro)
        {
            String consulta = "Select * from producto where NombreProducto='" + pro.get_codigo_producto() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaCategorias()
        {
            // List<Producto> lista = new List<Producto>();
            DataTable tabla = ds.ObtenerTabla("Producto", "Select * from producto");
            return tabla;
        }

        private void ArmarParametrosProductoEliminar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            string aux = pro.get_codigo_producto();
            SqlParametros.Value = aux;
            SqlParametros = Comando.Parameters.AddWithValue("@Cod_Art_Pro", aux);
       
          
        }

        public bool eliminarProducto(Productos pro)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosProductoEliminar(ref Comando, pro);
            AccesoDatos ad = new AccesoDatos();
            int filasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spEliminarProducto");
            if(filasInsertadas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        /*public int agregarProducto(Productos pro)
        {

            //pro.set_codigo_producto(ds.ObtenerMaximo("SELECT max(idProducto) FROM Producto") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductoAgregar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarProducto");
        }
        */


        private void ArmarParametrosProductoAgregar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPRODUCTO", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_codigo_producto();
            SqlParametros = Comando.Parameters.Add("@NOMBREPRO", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_nombre_producto();
        }

        //me va a permitir actualizar los parametros de los productos
        private void ArmarParametrosProductos(ref SqlCommand Comando , Productos prod)
        {
            SqlParameter SqlParametrosProducto = new SqlParameter();
           
            //actualiza el codigo de prodcuto

            SqlParametrosProducto = Comando.Parameters.Add("@Cod_Art_Pro", SqlDbType.Char, 8);
            SqlParametrosProducto.Value = prod.get_codigo_producto();
            
            //actualiza el precio de producto

            SqlParametrosProducto = Comando.Parameters.Add("@PU_Pro", SqlDbType.Decimal, 8);
            SqlParametrosProducto.Value = prod.get_precio_producto();

            //actualiza el stock
            SqlParametrosProducto = Comando.Parameters.Add("@Stock", SqlDbType.Int);
            SqlParametrosProducto.Value = prod.get_stock();

            //actualiza la categoria

            SqlParametrosProducto = Comando.Parameters.Add("@Categoria", SqlDbType.Char, 8);
            SqlParametrosProducto.Value = prod.get_categoria();

            //actualiza la descripcion

            SqlParametrosProducto = Comando.Parameters.Add("@Descripcion",SqlDbType.NVarChar, 30);
            SqlParametrosProducto.Value = prod.get_descripcion();

            //actualiza la url
            SqlParametrosProducto = Comando.Parameters.Add("@Url", SqlDbType.NVarChar, 50);
            SqlParametrosProducto.Value = prod.get_url_imagen();

            //actualiza el estado 
            SqlParametrosProducto = Comando.Parameters.Add("@Estado", SqlDbType.Bit);
            SqlParametrosProducto.Value = prod.get_estado();
        }



        public bool actualizar_producto(Productos prod)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosProductos(ref Comando, prod);
            AccesoDatos ad = new AccesoDatos();
            int FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando , "spActualizarProducto");
            if(FilasInsertadas == 1 )
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        
        public bool Eliminarprod_admin(Productos prod)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosProductoEliminar(ref Comando, prod);
            AccesoDatos ad = new AccesoDatos();
            int filasinsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spEliminarProducto");
            if (filasinsertadas == 1)
            {
                return true;

            }
            else return false;
        }


        //============================ COPIA DE ACCESO A DATOS ==========================================//

        String rutaBDAyti = @"Data Source=localhost\sqlexpress;Initial Catalog=Revestimientoayt;Integrated Security=True";


        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaBDAyti);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        private SqlDataAdapter ObtenerAdaptador(String consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql, Conexion);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }

        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            return estado;
        }

        public int ObtenerMaximo(String consulta)
        {
            int max = 0;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                max = Convert.ToInt32(datos[0].ToString());
            }
            return max;
        }

        public DataTable ObtenerTodosLosProductos()
        {
            return ObtenerTabla("Productos", "Select * From Productos");
        }


    }
}
