using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Presupuestos
    {
        //escribo todos los campos que va a tener la entidad.

        string nombre;//completado
        string telefono_fijo;//completado
        string celular;//completado
        string email;//completado
        string consulta;//completado
        string url;//completado
        string localidad;
        int ID;


        //declaro un constructor vacio.
        public Presupuestos() { }

        public void set_ID(int id)
        {
            this.ID = id;
        }

        public int get_ID()
        {
            return this.ID;
        }


        public void set_localidad (string localidad)
        {
            this.localidad = localidad;
        }

        public string get_localidad()
        {
            return this.localidad;
        }

        public void set_url(string new_url)
        {
            this.url = new_url;
        }

        public string get_url()
        {
            return this.url;
        }

        public void set_nombre(string nuevo_nombre)
        {
            this.nombre = nuevo_nombre;
        }

        public string get_nombre()
        {
            return this.nombre;
        }

        public void set_telefono_fijo(string nuevo_telefono_fijo)
        {
            this.telefono_fijo = nuevo_telefono_fijo;
        }

        public string get_telefono_fijo()
        {
            return this.telefono_fijo;
        }

        public void set_email(string nuevo_email)
        {
            this.email = nuevo_email;
        }

        public string get_email()
        {
            return this.email;
        }

        public void set_consulta(string nueva_consulta)
        {
            this.consulta = nueva_consulta;
        }

        public string get_consulta()
        {
            return this.consulta;
        }
    }
}
