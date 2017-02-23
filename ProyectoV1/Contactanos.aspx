<%@ Page Title="Contáctanos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="ProyectoV1.Contactanos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    </br>
    </br>
    </br>
    <h3>Contáctanos</h3>
    <h4>Información de contacto</h4>

  <h5>
        <strong>Dirección:</strong><br/>
    
    
        <strong>Localidad:</strong> Atacames, Esmeraldas<br/>
    <strong>Teléfono:</strong> 063871969<br/>
    
    <strong>Teléfonos 2:</strong> 06-2842733<br/>
   
    <strong>Teléfonos 3:</strong> 06-2842764<br/>
    
    <strong>Fax:</strong> 06-2842764<br/>
    
    <strong>Celular:</strong> 0997333229<br/>

      </h5>
    
    <h6>Contáctanos llenando la siguiente información:</h6>

    <p> <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Nombre:"></asp:Label>
         <asp:TextBox ID="TextBox2" runat="server" Width="292px" ValidateRequestMode="Enabled" Font-Size="Small"></asp:TextBox>
          
        </p>
     <p>
         <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="Teléfono: "></asp:Label>
         <asp:TextBox ID="TextBox4" runat="server" Width="294px" Font-Size="Small"></asp:TextBox>
         </p>
        <p>
    
    <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Ciudad: "></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="172px" Font-Size="Small"></asp:TextBox>
            &nbsp; &nbsp;
    </p>
    <p>
    <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="Correo electrónico:"></asp:Label>
           <asp:TextBox ID="TextBox7" runat="server" Width="250px" Font-Size="Small"></asp:TextBox></p>
    <p>
    <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Mensaje:"></asp:Label>
           </p>
    <p>
           <asp:TextBox ID="TextBox1" runat="server" Width="359px" Font-Size="Small" Height="116px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button1" runat="server" Text="Enviar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>
        
    </p>
   
     
</asp:Content>
