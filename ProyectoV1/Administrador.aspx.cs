using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoV1
{
    public partial class Administrador : System.Web.UI.Page
    {
       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reserva.aspx");
        }

        protected void ImgBtnAdmGestionar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminConsultas.aspx");
        }
    }
}