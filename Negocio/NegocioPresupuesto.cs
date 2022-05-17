using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;

namespace Negocio
{
    class NegocioPresupuesto
    {

        public Boolean atalaPresupuesto(float pu)
        {
            return true;
        }

        public bool agregarPresupuesto(string alias, string telefono, string localidad, string email, string consulta)
        {
            int cant_filas = 0;
            Presupuestos pre = new Presupuestos();
            pre.set_nombre(alias);
            pre.set_telefono_fijo(telefono);
            pre.set_localidad(localidad);
            pre.set_email(email);
            pre.set_consulta(consulta);

            

            return true;
        }

    }
}
