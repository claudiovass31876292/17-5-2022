using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioCuenta
    {
        public Boolean altaCuenta(float pu)
        {
            return true;
        }
        public bool agregarcuentas(string email, string contrasenia, string dni, string alias)
        {
            int cant_flias = 0;
            Cuentas Cue = new Cuentas();
            Cue.set_email_cuenta(email);
            Cue.set_contrasenia(contrasenia);
            Cue.set_Dni(dni);
            Cue.set_Alias(alias);


            DaoCuenta dao = new DaoCuenta();
            if (dao.existeCuenta(Cue) == false)
            {
                cant_flias = dao.agregarCuenta(Cue);
            }
            if (cant_flias == 1)
            {
                return true;
            }
            else
                return false;

        }

        public bool validarCuenta(string cuenta, string contrasenia)
        {
            DaoCuenta dao = new DaoCuenta();
            Cuentas Cue = new Cuentas();
            Cue.set_Alias(cuenta);
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


        public bool validarnivel(string cuenta, string contrasenia)
        {

            //la funcion validar nivel revisa que la cuenta tenga como usuario "admin" ademas de 
            //una contraseña y alias correcto.
            int flag = 0;
            bool cuenta_valida = validarCuenta(cuenta, contrasenia);
            if (cuenta_valida == true) { flag++; }
            if (flag == 1 && cuenta == "admin") { return true; } else return false;
        }
    }
}