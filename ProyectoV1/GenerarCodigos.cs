using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyectoV1
{
    class GenerarCodigos
    {
        private int dato;
        private int cont = 0;
        private String num = "";

        public void Generar(int dato)
        {
            this.dato = dato;

            if ((this.dato >= 1000) || (this.dato < 10000))
            {
                int can = cont + this.dato;
                num = "" + can;
            }
            if ((this.dato >= 100) || (this.dato < 1000))
            {
                int can = cont + this.dato;
                num = "0" + can;
            }
            if ((this.dato >= 9) || (this.dato < 100))
            {
                int can = cont + this.dato;
                num = "00" + can;
            }
            if (this.dato < 9)
            {
                int can = cont + this.dato;
                num = "000" + can;
            }
        }

        public String Serie()
        {
            return this.num;
        }
    }
}
