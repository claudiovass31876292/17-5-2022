using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Dao
{
    class DaoPresupuestos
    {
        AccesoDatos ds = new AccesoDatos();

        private void ArmarParametrosPrepuestoAgregar(ref SqlCommand Comando,Presupuestos pre)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add(" @Email ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_email();
            SqlParametros = Comando.Parameters.Add(" @Alias ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_nombre();
            SqlParametros = Comando.Parameters.Add(" @Telefono ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_telefono_fijo();
            SqlParametros = Comando.Parameters.Add(" @Localidad ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_localidad();
            SqlParametros = Comando.Parameters.Add(" @Consulta ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_consulta();
            SqlParametros = Comando.Parameters.Add(" @ID ", SqlDbType.VarChar);
            SqlParametros.Value = pre.get_ID();


        }


        public int agregarPresupuesto(Presupuestos pre)
        {

            // pro.get_email_cuenta(ds.ObtenerMaximo("SELECT max(idProducto) FROM Producto") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosPrepuestoAgregar(ref comando, pre);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spinsertarpresupuesto");
        }

    }
}
