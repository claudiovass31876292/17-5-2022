using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;

namespace Negocio
{
   public class NegocioProducto
    {

        public string neg_buscarProducto(String productoBuscado)
        {

            
            return productoBuscado;
        }


        public Boolean altaProducto(float pu)
        {
            return true;    
        }
        public bool agregarProducto(string codigo_producto,
        string nombre_producto,
        decimal precio_producto,
        bool estado)
        {
            int cant_flias = 0;
            Productos pro = new Productos();
            pro.set_codigo_producto(codigo_producto);
            pro.set_nombre_producto(nombre_producto);
            pro.set_precio_producto(precio_producto);
         //   pro.set_stock_producto(stock);
            pro.set_estado(estado);


            DaoProducto dao = new DaoProducto();
            if (dao.existeProducto(pro) == false)
            {
          //      cant_flias = dao.agregarProducto(pro);
            }
            if (cant_flias == 1)
            {
                return true;
            }
            else
                return false;

        }
        /* ******************Hacerla a validarProducto
        public bool validarProducto(string nombre, int id)
        {
            DaoProducto dao = new DaoProducto();
            Productos pro = new Productos();
            pro.set_codigo_producto(id);
            Cue.set_contrasenia(contrasenia);
            if (dao.existeCuenta(Cue) == false)
            {

                return false;
            }
            else if (Cue.get_contrasenia() != contrasenia)
            {

                return false;
            }
            else
            {
                return true;
            }

        }
        */
    }
}
