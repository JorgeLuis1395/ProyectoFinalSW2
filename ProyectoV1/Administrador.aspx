<%@ Page Title="Administrador" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Administrador.aspx.cs" Inherits="ProyectoV1.Administrador" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br>
<br>
<br>
    <br>
    <br>
    <asp:Panel ID="Panel1" runat="server" Height="345px">
       <div align="center">
           <br />
           <br />
           <br />
         <table>
   
    <tr>
    	
    	<td>
            <center><asp:ImageButton ID="ImbBtnAdmReserva"  runat="server" Height="150px" ImageUrl="~/Imagenes/482335677.jpg" Width="150px" OnClick="ImageButton1_Click"  />
            <br />
            Reservar</center></td>
         <td></td>
         <td>
           <center>  <asp:ImageButton ID="ImgBtnAdmGestionar" runat="server" Height="150px" ImageUrl="~/Imagenes/gestionar-recursos-humanos-adaptandose-al-cambio-1.jpg" Width="151px" OnClick="ImgBtnAdmGestionar_Click" />
             <br />
             Gestionar</td></center>
         <td></td>
         <td>     
       <center> <asp:ImageButton ID="ImgBtnAdmMidificar" runat="server" Height="150px" ImageUrl="~/Imagenes/borrador_318-61818.jpg" Width="150px" />
             <br />
             Modificar</td></center>
         <td></td>
         <td>     
        <center><asp:ImageButton ID="ImgBtnAdmSalir" runat="server" Height="150px" ImageUrl="~/Imagenes/puerta-de-salida-con-la-flecha-hacia-la-derecha_318-40597.jpg" Width="150px" />
             <br />
             Salir</td></center>
       
    </tr>
    
    </table>
           </div>
    </asp:Panel>

</asp:Content>


