using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoV1
{
    public partial class Reserva : Page
    {
        public int numCod;
        Validaciones v = new Validaciones();
        static Conexion cc = new Conexion();
        public void Codigo()
        {
            int cod;
            string num = "";
            SqlConnection cn = cc.Conectar();
            try
            {
                SqlCommand cmd =
                    new SqlCommand("select max(ID_Reserva_Habitacion) from Reserva_Habitacion", cn);
                num = cmd.ExecuteScalar().ToString();
                if (num == "")
                {
                    numCod = 1;
                }
                else
                {
                    cod = Convert.ToInt32(num);
                    cod += 1;
                    numCod = cod;
                }
                cn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }
        public void Page_Load(object sender, EventArgs e)
        {

            Adicionar1.Visible = true;
            Adicionar2.Visible = false;
            Cantidad1.Visible = true;
            FechaInicio1.Visible = true;
            FechaFin1.Visible = true;
            Cantidad2.Visible = false;
            FechaInicio2.Visible = false;
            FechaFin2.Visible = false;
            Cantidad3.Visible = false;
            FechaInicio3.Visible = false;
            FechaFin3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            DropDownCantTriple.Visible = false; 
            Table2.Visible = false;
            Label21.Visible = false;
            ButtonReservar.Visible = false;
            ButtonLimpiar.Visible = false;
            GridView5.Visible = false;
            Label30.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            

            CalendarExtender1.StartDate = DateTime.Now;
            CalendarExtender2.StartDate = DateTime.Now;
            CalendarExtender3.StartDate = DateTime.Now;
            CalendarExtender4.StartDate = DateTime.Now;
            CalendarExtender5.StartDate = DateTime.Now;
            CalendarExtender6.StartDate = DateTime.Now;


            Label3.Text = TxtFechaInicioSimple.Text;
        }

        public void Adicionar1_Click(object sender, EventArgs e)
        {
            Adicionar2.Visible = true;
            DropDownList4.Visible = true;
            Cantidad2.Visible = true;
            FechaInicio2.Visible = true;
            FechaFin2.Visible = true;
            
           


        }

        public void Adicionar2_Click(object sender, EventArgs e)
        {
            Adicionar2.Visible = true;
            DropDownList4.Visible = true;
            Cantidad2.Visible = true;
            FechaInicio2.Visible = true;
            FechaFin2.Visible = true;
           
            DropDownList5.Visible= true;
            Cantidad3.Visible = true;
            FechaInicio3.Visible = true;
            FechaFin3.Visible = true;
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            /* SqlConnection cn = cc.Conectar();

              try
              {

                  SqlDataAdapter da =
                   new SqlDataAdapter("select top '"+DropDownCantSimple+ "' numero_habitacion_piso, descripcion_tipo_habitacion, precio_tipo_habitacion,imagen_habitacion, detalle1, detalle2, detalle3, detalle4, detalle5, detalle6, detalle7, detalle8 from habitacion, tipo_habitacion, reserva_habitacion where tipo_habitacion.id_tipo_habitacion = habitacion.id_tipo_habitacion  and descripcion_tipo_habitacion ='" + DropDownList1.SelectedValue+ "' AND ESTADO = 0 ", cn);
                  */
            GridView2.Visible = true;
            GridView3.Visible = true;
            GridView4.Visible = true;

            DataTable dt = new DataTable();
            /*da.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();

            cn.Close();
            }
            catch (Exception exception)
            {
            Label3.Text = "No existe Habitaciones por favor ingrese nuevos criterios de busqueda";
                Console.WriteLine(exception);
                throw;
            }*/
        }

        public void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("ReservaDatos.aspx");
        }

        public void SqlDataSource1_Selecting(object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
        {

        }

        public void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

            Table2.Visible = true;
            Label21.Visible = true;
            ButtonReservar.Visible = true;
            ButtonLimpiar.Visible = true;
            string num_Habitacion =GridView2.Rows[GridView2.SelectedIndex].Cells[1].Text;
            string tipo_habitacion = GridView2.Rows[GridView2.SelectedIndex].Cells[2].Text;
            string Costo = GridView2.Rows[GridView2.SelectedIndex].Cells[4].Text;
            cost.Text = num_Habitacion;
            num.Text = tipo_habitacion;
            tip.Text = Costo;
            GridView5.Visible = false;
            MultiView1.Visible = true;
            MultiView1.ActiveViewIndex = 0;

        }

        public void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Table2.Visible = true;
            Label21.Visible = true;
            ButtonReservar.Visible = true;
            ButtonLimpiar.Visible = true;
            string num_Habitacion1 = GridView3.Rows[GridView3.SelectedIndex].Cells[2].Text;
            string tipo_haitacion1 = GridView3.Rows[GridView3.SelectedIndex].Cells[3].Text;
            string Costo1 = GridView2.Rows[GridView3.SelectedIndex].Cells[4].Text;
            cost.Text = num_Habitacion1;
            num.Text = tipo_haitacion1;
            tip.Text = Costo1;
            GridView5.Visible = false;
            
        }

        public void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Table2.Visible = true;
            Label21.Visible = true;
            ButtonReservar.Visible = true;
            ButtonLimpiar.Visible = true;
            string num_Habitacion2 = GridView4.Rows[GridView4.SelectedIndex].Cells[2].Text;
            string tipo_haitacion2 = GridView4.Rows[GridView4.SelectedIndex].Cells[3].Text;
            string Costo2 = GridView4.Rows[GridView4.SelectedIndex].Cells[4].Text;
            cost.Text = num_Habitacion2;
            num.Text = tipo_haitacion2;
            tip.Text = Costo2;
            GridView5.Visible = false;
        }
        
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = cc.Conectar();
            String cedula;
            cedula = txtCedula.Text;
            if (v.VerificarCedula(cedula))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("insert into Cliente values ('" + txtCedula.Text.Trim() + "','"
                            + txtNombre.Text.Trim() + "','"
                            + txtApellido.Text.Trim() + "','"
                            + txtDireccion.Text.Trim() + "','"
                            + txtCorreo.Text.Trim() + "','"
                            + txtTelefono.Text.Trim() + "')", cn);
                    cmd.ExecuteNonQuery();

                    SqlCommand cmd1 = new SqlCommand("update habitacion set estado = 1 where numero_habitacion_piso = '" + Convert.ToInt32(cost.Text) + "'", cn);
                   
                    cmd1.ExecuteNonQuery();
                    GridView6.Visible = true;
                    cn.Close();         
                        
                    /* cn.Open();
                     int x = int.Parse(cost.Text.Trim());
                     SqlCommand cmd1 = new SqlCommand("insert into Reserva_Habitacion values ('"+ numCod + "','"
                             + Convert.ToInt32(txtCedula.Text) + "','"
                             + '1'+"', '"
                             + Convert.ToInt32(DropDownCantSimple.Text) + "','"
                             + '02/21/2017' + "','"
                             + '02/21/2017' + "', '"
                             + Convert.ToInt32(DropDownList9.Text) + "','"
                             + Convert.ToDouble(tip.Text)+ "')", cn);
                     cmd1.ExecuteNonQuery*/

                    Response.Redirect("PagoTarjeta.aspx");
                    
                    cn.Close();
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception);
                    throw;
                }

            }
            else
            {
                mensaje.Text = "Cédula Incorrecta";
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CleanControl(this.Controls);
        }
        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control is DropDownList)
                    ((DropDownList)control).ClearSelection();
                else if (control is RadioButtonList)
                    ((RadioButtonList)control).ClearSelection();
                else if (control is CheckBoxList)
                    ((CheckBoxList)control).ClearSelection();
                else if (control is RadioButton)
                    ((RadioButton)control).Checked = false;
                else if (control is CheckBox)
                    ((CheckBox)control).Checked = false;
                else if (control.HasControls())
                    //Esta linea detécta un Control que contenga otros Controles
                    //Así ningún control se quedará sin ser limpiado.
                    CleanControl(control.Controls);
            }
        }

        protected void GridView2_SelectedIndexChanged2(object sender, EventArgs e)
        {
            switch (DropDownList1.Text)
            {
                case "Habitación Simple":
                    MultiView1.ActiveViewIndex = 0;
                    break;
                case  "Habitación Matrimonial":
                    MultiView1.ActiveViewIndex = 1;
                    break;
                case "Habitación Doble":
                    MultiView1.ActiveViewIndex = 4;
                    break;
                case "Habitación Triple":
                    MultiView1.ActiveViewIndex = 3;
                    break;
                case "Habitación Triple Simple":
                    MultiView1.ActiveViewIndex = 2;
                    break;
               
            }
            Button1.Visible = true;
            Button2.Visible = true;
           
                     
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            Table2.Visible = true;
            Label21.Visible = true;
            ButtonReservar.Visible = true;
            ButtonLimpiar.Visible = true;
            string num_Habitacion = GridView2.Rows[GridView2.SelectedIndex].Cells[2].Text;
            string tipo_haitacion = GridView2.Rows[GridView2.SelectedIndex].Cells[3].Text;
            string Costo = GridView2.Rows[GridView2.SelectedIndex].Cells[4].Text;
            cost.Text = num_Habitacion;
            num.Text = tipo_haitacion;
            tip.Text = Costo;
            GridView5.Visible = false;
            Label30.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reserva.aspx");
        }
    }
}

