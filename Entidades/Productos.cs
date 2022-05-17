using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    //escribo todos los campos que va a tener la entidad.
    public class Productos
    {
        string codigo_producto; //completado
        string nombre_producto; //completado nota , los productos no tienen nombre sino categoria.
        decimal precio_producto; //complteado
        bool estado;    //completado ¿inutilizado? no se utiliza el estado ¿no se va a poder dar baja logica?
       
        
        //DEBERIA AGREGAR UNA MANERA DE UTILIZAR EL ESTADO PARA NO MOSTRARLO SI ESTA EN BOOL ESTADO = FALSE ???

        //AGREGO LA VARIABLE STOCK PREVIAMENTE INEXSITENTE.
        int stock;
        //AGREGO LA VARIABLE CATEGORIA PREVIAMENTE INEXISTENTE.
        string categoria;
        //AGREGO LA URL DE LA IMAGEN PREVIAMENTE INEXISTENTE.

        string url_imagen;  //completado

        //AGREGO LA DESCRIPCION DEL PRODUCTO.
        string descripcion; //completado


        //constructor vacio.
        public Productos()
        {

        }




        //gets and sets

        public void set_url_imagen(string new_image)
        {
            this.url_imagen = new_image;
        }

        public string get_url_imagen()
        {
            return this.url_imagen;
        }

        public void set_categoria(string new_categoria)
        {
            this.categoria = new_categoria;
        }
            
        
        public string get_descripcion()
        {
            return this.descripcion;
        }

        public void set_descripcion(string new_descripcion)
        {
            this.descripcion = new_descripcion;
        }

        public string get_categoria()
        {
            return this.categoria;
        }
        
        public void set_codigo_producto(string nuevo_codigo_producto)
        {
            this.codigo_producto = nuevo_codigo_producto;
        }

        public string get_codigo_producto()
        {
            return this.codigo_producto;
        }

        public void set_nombre_producto(string nuevo_nombre_producto)
        {
            this.nombre_producto = nuevo_nombre_producto;
        }

        public string get_nombre_producto()
        {
            return this.nombre_producto;
        }

        public void set_precio_producto(decimal nuevo_precio)
        {
            this.precio_producto = nuevo_precio;
        }

        public Decimal get_precio_producto()
        {
            return this.precio_producto;
        }

        public void set_estado(bool nuevo_estado)
        {
            this.estado = nuevo_estado;
        }

        public bool get_estado()
        {
            return this.estado;
        }

   
        public string get_codigo_imagen()
        {
            return this.url_imagen;
        }

        //GET Y SETS DE PRODUCTOS PREVIAMENTE INEXSITENTES.


        public int get_stock()
        {
            return this.stock;
        }

        public void set_stock(int new_stock) 
        {
            this.stock = new_stock;
        }

    }
}
