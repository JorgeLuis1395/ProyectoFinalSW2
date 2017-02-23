using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

using System.Data;
namespace ProyectoV1
{
    public class Validaciones
    {
        string _mensaje;
        string msgCampoDigitosDiez = "El campo debe poseer 10 dígitos";

        //Hecho por WG
        public bool VerificarTamaño(string e, int tamaño)
        {
            if ((e.Trim().Count() >= tamaño && e.Trim().Count() <= tamaño) || e.Trim().Count() == tamaño || e.Trim().Count() == tamaño - 3)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Hecho por WG
        public bool VerificarTamañoVariable(string e, int tamaño)
        {
            if (e.Trim().Count() <= tamaño || e.Trim().Count() == tamaño || e.Trim().Count() == tamaño - 3)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Hecho por WG
        public bool VerificarNumero(string e)
        {
            try
            {
                Convert.ToDecimal(e);
                return true;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        //Hecho por WG
        public bool VerificarDecimal(string e)
        {
            try
            {
                Convert.ToDecimal(e);
                return true;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        //Hecho porWG
        public bool VerificarExistencia(string e)
        {
            if (e.Trim().Length == 0 || e == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        //Hecho por WG
        public bool verificarTexto(string textoVerificar)
        {
            try
            {

                string regularExpression = @"^[a-zA-Z]+\s*[a-zA-Z]*\s*[a-zA-Z]*$";
                string input = textoVerificar;
                if (Regex.IsMatch(input, regularExpression))
                {
                    return true;

                }

                else
                {
                    return false;
                }

            }
            catch (Exception)
            {
                throw;
            }
        }

        internal void VerificarNumero(EventArgs e)
        {
            throw new NotImplementedException();
        }

        internal void verificarTexto(EventArgs e)
        {
            throw new NotImplementedException();
        }

        public bool verificarfecha(DateTime fecha1, DateTime fecha2)
        {
            if (fecha1 > fecha2)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool VerificarCedula(string ced)
        {
            long isNumeric;
            var total = 0;
            const int tamanoLongitudCedula = 10;
            int[] coeficientes = { 2, 1, 2, 1, 2, 1, 2, 1, 2 };
            const int numeroProvincias = 24;
            const int tercerDigito = 6;
            //var digitoVerificadorObtenido = (total % 10) != 0 ? 10 - (total % 10) : 0;
            //isNumeric = Convert.ToInt32(ced);

            if (long.TryParse(ced, out isNumeric) && ced.Length == tamanoLongitudCedula)
            {
                var provincia = Convert.ToInt32(string.Concat(ced[0], ced[1], string.Empty));
                var digitoTres = Convert.ToInt32(ced[2] + string.Empty);
                if ((provincia > 0 && provincia <= numeroProvincias) && digitoTres < tercerDigito)
                {
                    var digitoVerificadorRecibido = Convert.ToInt32(ced[9] + string.Empty);
                    for (var k = 0; k < coeficientes.Length; k++)
                    {
                        var valor = Convert.ToInt32(coeficientes[k] + string.Empty) *
                            Convert.ToInt32(ced[k] + string.Empty);
                        total = valor >= 10 ? total + (valor - 9) : total + valor;
                    }
                    var digitoVerificadorObtenido = total >= 10 ? (total % 10) != 0 ?
                        10 - (total % 10) : (total % 10) : total;

                    return digitoVerificadorObtenido == digitoVerificadorRecibido;
                }

                return false;
            }

            return false;
        }

        public bool verificarRucSociedadPrivada(string ruc)
        {
            long isNumeric;
            const int tamanoLongitudRuc = 13;
            const int modulo = 11;
            const int tercerDigito = 9;
            int total = 0;
            const string establecimiento = "001";
            int[] coeficientes = { 4, 3, 2, 7, 6, 5, 4, 3, 2 };
            if (long.TryParse(ruc, out isNumeric) && ruc.Length.Equals(tamanoLongitudRuc))
            {
                var numeroProvincia =
                    Convert.ToInt32(string.Concat(ruc[0] + string.Empty, ruc[1] + string.Empty));
                var sociedadPublica =
                    Convert.ToInt32(ruc[2] + string.Empty);
                if ((numeroProvincia >= 1 && numeroProvincia <= 24)
                    && sociedadPublica == tercerDigito &&
                    ruc.Substring(10, 3) == establecimiento)
                {
                    var digitoVerificadorRecibido = Convert.ToInt32(ruc[9] + string.Empty);
                    for (var i = 0; i < coeficientes.Length; i++)
                    {
                        total =
                            total + (coeficientes[i] *
                            Convert.ToInt32(ruc[i] +
                            string.Empty));
                    }
                    var digitoVerificadorObtenido = (total % modulo) == 0 ?
                        0 : modulo - (total % modulo);
                    return digitoVerificadorRecibido == digitoVerificadorObtenido;
                }
                return false;
            }
            return false;

        }//fin de verificar RUC sociedad privada

        public bool verificarRucPersonaNatural(string ruc)
        {
            long isNumeric;
            const int tamanoLongitudRuc = 13;
            const string establecimiento = "001";
            if (long.TryParse(ruc, out isNumeric) && ruc.Length.Equals(tamanoLongitudRuc))
            {
                var numeroProvincia = Convert.ToInt32(string.Concat(ruc[0] + string.Empty, ruc[1] + string.Empty));
                var personaNatural = Convert.ToInt32(ruc[2] + string.Empty);
                if ((numeroProvincia >= 1 && numeroProvincia <= 24) && (personaNatural >= 0 && personaNatural < 6))
                {
                    return ruc.Substring(10, 3) == establecimiento && VerificarCedula(ruc.Substring(0, 10));
                }
                return false;
            }
            return false;
        }//fin de verificar ruc persona natural

        public bool verificarRucSociedadPublica(string ruc)
        {
            long isNumeric;
            const int tamanoLongitudRuc = 13;
            const int modulo = 11;
            const int tercerDigito = 6;
            var total = 0;
            const string establecimiento = "0001";
            int[] coeficientes = { 3, 2, 7, 6, 5, 4, 3, 2 };
            if (long.TryParse(ruc, out isNumeric) && ruc.Length.Equals(tamanoLongitudRuc))
            {
                var numeroProvincia = Convert.ToInt32(string.Concat(ruc[0] + string.Empty, ruc[1] + string.Empty));
                var sociedadPublica = Convert.ToInt32(ruc[2] + string.Empty);
                if ((numeroProvincia >= 1 && numeroProvincia <= 24)
                    && sociedadPublica == tercerDigito && ruc.Substring(9, 4) == establecimiento)
                {
                    var digitoVerificadorRecibido = Convert.ToInt32(ruc[8] + string.Empty);
                    for (var i = 0; i < coeficientes.Length; i++)
                    {
                        total = total + (coeficientes[i] * Convert.ToInt32(ruc[i] + string.Empty));
                    }
                    var digitoVerificadorObtenido = modulo - (total % modulo);
                    return digitoVerificadorRecibido == digitoVerificadorObtenido;
                }
                return false;
            }
            return false;


        }//fin de verificarRucSociedadPublica

        //Hecho por WG
        public bool VerificarNumeroPositvo(string e)
        {
            try
            {
                if (Convert.ToDecimal(e) >= 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }
        //Hecho por WG
        public string parte1(string texto1)
        {
            try
            {
                if (texto1 == "")
                {
                    return texto1 = "001001";
                }
                else
                {
                    if (Convert.ToInt32(texto1) <= 9)
                    {
                        return texto1 = "00000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99)
                    {
                        return texto1 = "0000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 999)
                    {
                        return texto1 = "000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 9999)
                    {
                        return texto1 = "00" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99999)
                    {
                        return texto1 = "0" + Convert.ToInt32(texto1).ToString();
                    }

                }
                return texto1;
            }
            catch (Exception)
            {
                return "";
            }
        }
        //Hecho por WG
        public string parte3(string texto1)
        {
            try
            {

                if (texto1 == "")
                {
                    return texto1 = "0000001";
                }
                else
                {
                    if (Convert.ToInt32(texto1) <= 9)
                    {
                        return texto1 = "000000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99)
                    {
                        return texto1 = "00000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 999)
                    {
                        return texto1 = "0000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 9999)
                    {
                        return texto1 = "000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99999)
                    {
                        return texto1 = "00" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 999999)
                    {
                        return texto1 = "0" + Convert.ToInt32(texto1).ToString();
                    }
                    /* if (Convert.ToInt32(texto1) <= 9999999)
                     {
                         return texto1 = "00" + Convert.ToInt32(texto1).ToString();
                     }
                     if (Convert.ToInt32(texto1) <= 99999999)
                     {
                         return texto1 = "0" + Convert.ToInt32(texto1).ToString();
                     }*/
                }
                return texto1;
            }
            catch (Exception)
            {
                return "";
            }
        }

     /*  public string ValidarTelefonoConvencional(TextBox obj_texto)
        {

            #region CODIGO ORIGINAL PARA VALIDACION DE TELEFONOS CONVENCIONALES
            //string _dosPrimerosDigitosDeNueve, _primerDigitoDeSiete;
            //if (obj_texto.Text.Length == 9)
            //{
            //    _dosPrimerosDigitosDeNueve = obj_texto.Text.Substring(0, 2).ToString();
            //    if (_dosPrimerosDigitosDeNueve == "01" || _dosPrimerosDigitosDeNueve == "08" ||
            //        _dosPrimerosDigitosDeNueve == "09" || _dosPrimerosDigitosDeNueve == "00")

            //        erpValidaciones.SetError(obj_texto, "El número ingresado no corresponde a un número convencional.");
            //    else erpValidaciones.SetError(obj_texto, "");
            //}
            //else if (obj_texto.Text.Length == 7)
            //{
            //    _primerDigitoDeSiete = obj_texto.Text.Substring(0, 1).ToString();
            //    if (_primerDigitoDeSiete != "2" && _primerDigitoDeSiete != "3")
            //        erpValidaciones.SetError(obj_texto, "El número ingresado no corresponde a un número convencional.");
            //    else erpValidaciones.SetError(obj_texto, "");
            //}
            //else erpValidaciones.SetError(obj_texto, "El número ingresado debe tener 7 ó 9 dígitos."); 
            #endregion

            string _dosPrimerosDigitosDeNueve, _primerDigitoDeSiete;
            if (obj_texto.Text.Length == 9)
            {
                _dosPrimerosDigitosDeNueve = obj_texto.Text.Substring(0, 2).ToString();
                if (_dosPrimerosDigitosDeNueve != "02" && _dosPrimerosDigitosDeNueve != "03" &&
                    _dosPrimerosDigitosDeNueve != "04" && _dosPrimerosDigitosDeNueve != "05" &&
                    _dosPrimerosDigitosDeNueve != "06" && _dosPrimerosDigitosDeNueve != "07")
                    _mensaje = "Los dos primeros dígitos no corresponden a un código de provincia. ";
                else _mensaje = "";
            }
            else if (obj_texto.Text.Length == 7)
            {
                _primerDigitoDeSiete = obj_texto.Text.Substring(0, 1).ToString();
                if (_primerDigitoDeSiete != "2" && _primerDigitoDeSiete != "3" && _primerDigitoDeSiete != "6")
                    _mensaje = "El número ingresado es incorrecto. El primer dígito debe ser 2, 3 o 6";
                else _mensaje = "";
            }
            else _mensaje = "Se deben ingresar 7 ó 9 dígitos para teléfonos convencionales.";
            return _mensaje;
        }

        public string ValidarTelefonoMovil(TextBox obj_texto)
        {

            #region CODIGO ORIGINAL DE VALIDACION DE TELEFONOS MOVILES
            //if (obj_texto.Text.Length < 10)
            //    erpValidaciones.SetError(obj_texto, msgCampoDigitosDiez);
            //else
            //    erpValidaciones.SetError(obj_texto, "");

            //string _dosPrimerosDigitos;
            //_dosPrimerosDigitos = obj_texto.Text.Substring(0, 2).ToString();
            //string _tercerDígito;
            //_tercerDígito = obj_texto.Text.Substring(2, 1).ToString();
            //string _cuartoDigito;
            //_cuartoDigito = obj_texto.Text.Substring(3, 1).ToString();

            //if (_dosPrimerosDigitos != "09")
            //    erpValidaciones.SetError(obj_texto, "El número ingresado es incorrecto.");
            //else if (_tercerDígito != "9" && _tercerDígito != "8")
            //    erpValidaciones.SetError(obj_texto, "El número ingresado es incorrecto.");
            //else if (_cuartoDigito == "1" && _cuartoDigito == "0")
            //    erpValidaciones.SetError(obj_texto, "El número ingresado es incorrecto.");
            //else
            //    erpValidaciones.SetError(obj_texto, ""); 
            #endregion

            string _dosPrimerosDigitos;
            _dosPrimerosDigitos = obj_texto.Text.Substring(0, 2).ToString();
            string _tercerDígito;
            _tercerDígito = obj_texto.Text.Substring(2, 1).ToString();
            string _cuartoDigito;
            _cuartoDigito = obj_texto.Text.Substring(3, 1).ToString();
            if (obj_texto.Text.Length < 10) _mensaje = msgCampoDigitosDiez;
            else if (_dosPrimerosDigitos != "09")
                _mensaje = "El número ingresado es incorrecto. Los teléfonos móviles deben iniciar con 09";
            //else if (_tercerDígito != "9" && _tercerDígito != "8" && _tercerDígito != "5" && _tercerDígito != "6" && _tercerDígito != "7")
            //    _mensaje = "El número ingresado es incorrecto. El tercer dígito debe ser 5, 6, 7, 8 ó 9";
            //else if (_cuartoDigito == "1" && _cuartoDigito == "0")
            //    _mensaje = "El número ingresado es incorrecto. El cuarto dígito debe ser diferente de 1 y 0";
            else
                _mensaje = "";

            return _mensaje;
        }

        //WG / para completar el numero de serie de la factura con 9 digitos
        public string parte4(string texto1)
        {
            try
            {

                if (texto1 == "")
                {
                    return texto1 = "000000001";
                }
                else
                {
                    if (Convert.ToInt32(texto1) <= 9)
                    {
                        return texto1 = "00000000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99)
                    {
                        return texto1 = "0000000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 999)
                    {
                        return texto1 = "000000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 9999)
                    {
                        return texto1 = "00000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99999)
                    {
                        return texto1 = "0000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 999999)
                    {
                        return texto1 = "000" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 9999999)
                    {
                        return texto1 = "00" + Convert.ToInt32(texto1).ToString();
                    }
                    if (Convert.ToInt32(texto1) <= 99999999)
                    {
                        return texto1 = "0" + Convert.ToInt32(texto1).ToString();
                    }
                }
                return texto1;
            }
            catch (Exception)
            {
                return "";
            }
        }

        public void FormatoDecimales(TextBox objTextBox)
        {
            if (objTextBox.Text != "" && objTextBox.Text != null)
                objTextBox.Text = String.Format(System.Globalization.CultureInfo.CurrentCulture, "{0:N}",
                    Convert.ToDecimal(objTextBox.Text));

        }

        public void verificarIngresoMoneda(KeyPressEventArgs e)
        {
            if (Char.IsDigit(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (e.KeyChar == '.')
                e.Handled = false;
            else if (e.KeyChar == ',')
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = true;
            else
                e.Handled = true;
        }
        public void verificarIngresoNumero(KeyPressEventArgs e)
        {
            if (Char.IsDigit(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = true;
            else
                e.Handled = true;
        }

        public void verificarIngresoCorreo(KeyPressEventArgs e)
        {
            if (Char.IsLetterOrDigit(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = true;
            else if (e.KeyChar == '.')
                e.Handled = false;
            else if (e.KeyChar == '-')
                e.Handled = false;
            else if (e.KeyChar == '_')
                e.Handled = false;
            else
                e.Handled = true;
        }
        public void verificarIngresoDecimal(KeyPressEventArgs e)
        {
            if (Char.IsDigit(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (e.KeyChar == ',')
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = true;
            else
                e.Handled = true;
        }

        public bool VerificarNumeroPorcentaje(string e)
        {
            try
            {
                if (Convert.ToDecimal(e) < 100)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        //WG
        public void verificarIngresoComa(KeyPressEventArgs e, TextBox text_box)
        {
            if (e.KeyChar == 8)
            {
                e.Handled = false;
                return;
            }

            bool IsDec = false;
            int nroDec = 0;

            for (int i = 0; i < text_box.Text.Length; i++)
            {
                if (text_box.Text[i] == ',')
                    IsDec = true;

                if (IsDec && nroDec++ >= 2)
                {
                    e.Handled = true;
                    return;
                }
            }

            if (e.KeyChar >= 48 && e.KeyChar <= 57)
                e.Handled = false;
            else if (e.KeyChar == 44)
                e.Handled = (IsDec) ? true : false;
            else
                e.Handled = true;
        }

        public void verificarIngresoLetras(KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = false;
            else
                e.Handled = true;
        }

        public void verificarIngresoLetrasNumeros(KeyPressEventArgs e)
        {
            if (Char.IsLetterOrDigit(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = false;
            else
                e.Handled = true;
        }

        public void VerificarIngresoCodigoCuenta(KeyPressEventArgs e, char caracter)
        {
            if (Char.IsDigit(e.KeyChar))
                e.Handled = false;
            else if (Char.IsControl(e.KeyChar))
                e.Handled = false;
            else if (Char.IsSeparator(e.KeyChar))
                e.Handled = true;
            else if (e.KeyChar == caracter)
                e.Handled = false;
            else
                e.Handled = true;
        }*/
    }
}
