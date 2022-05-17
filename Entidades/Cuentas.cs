using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Cuentas
    {
        //escribo todos los campos que va a tener la entidad.

      
        string correo_electronico; //completado
        string contrasenia;//completado
        string Dni;//completado
        string  Alias;//completado
        int nivel;
        //declaro un constructor vacio.

        public Cuentas() { }

        // declaro los sets y los gets.

        public void set_nivel(int new_nivel)
        {
            this.nivel = new_nivel;
        }

        public int get_nivel()
        {
            return this.nivel;
        }
        public String get_Alias()
        {
            return Alias;
        }

        public void set_Alias(String Nuevo_Alias)
        {
            this.Alias = Nuevo_Alias;
        }
        public String get_Dni()
        {
            return Dni;
        }

        public void set_Dni(String Nuevo_Dni)
        {
            this.Dni = Nuevo_Dni;
        }


       

      

        public void set_email_cuenta(string nuevo_email)
        {
            this.correo_electronico = nuevo_email;
        }

        public string get_email_cuenta()
        {
            return correo_electronico;
        }

        public void  set_contrasenia(string nueva_contrasenia) {

            this.contrasenia = nueva_contrasenia;
        }

        public string get_contrasenia()
        {
            return this.contrasenia;
        }
    }
}
