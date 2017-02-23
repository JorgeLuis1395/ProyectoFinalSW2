<%@ Page Title="Servicios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReservaDatos.aspx.cs" Inherits="ProyectoV1.ReservaDatos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <br>
    <br>
    <br>    
    <br> 
    <h3><asp:Label ID="Label14" runat="server" Font-Size="X-Large" aling="center" Text="RESERVA DEL HOTEL ATACAMES 2: "></asp:Label></h3>
        <div> 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
    </div>

        <p>
            <asp:Label ID="Label17" runat="server" Text="Registro de datos"></asp:Label>
    </p>
        
        
        
            <table style="width: 100%;">
            <tr>
                <td style="width: 162px">
                <asp:Label ID="Label16" runat="server" Text="Tipo de Identificación:" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Small" Height="20px" Width="177px">
                <asp:ListItem>Cédula</asp:ListItem>
                <asp:ListItem>Pasaporte</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td>
                <asp:Label ID="Label15" runat="server" Text="N° de Identificación: " Font-Size="Small"></asp:Label>
                <asp:TextBox ID="txtCedula" runat="server" Width="174px" Font-Size="Small"></asp:TextBox>
                    <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Solo Numeros" ValidationExpression="([0-9]|-)*" ValidationGroup="Identificacion" Font-Size="Small" ForeColor="Red">Ingrese Solo Numeros</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Ingrese su N° de Identificacion">*</asp:RequiredFieldValidator>
                <asp:Label ID="mensaje" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                </td>
                </tr>
            <tr>
                <td style="width: 162px"><asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Primer Nombre:"></asp:Label></td>
                <td style="width: 297px"><asp:TextBox ID="txtNombre" runat="server" Width="269px" ValidateRequestMode="Enabled" Font-Size="Small"></asp:TextBox></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese Solo Letras" ValidationExpression="([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]*)" ValidationGroup="SoloLetras" Display="Dynamic" ForeColor="Red" Font-Size="Small">Ingrese Solo Un Nombre</asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Ingrese un Nombre">*</asp:RequiredFieldValidator></td>

            </tr>
            <tr>
                <td style="width: 162px"><asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Primer Apellido:"></asp:Label></td>
                <td style="width: 297px">
                <asp:TextBox ID="txtApellido" runat="server" Width="269px" Font-Size="Small" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Ingrese Solo Letras" ValidationExpression="[a-zA-Z]*" ValidationGroup="SoloLetrasApellido" Display="Dynamic" ForeColor="Red" Font-Size="Small">Ingrese Solo Apellido Paterno</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="Ingrese un Apellido">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td style="width: 162px"><asp:Label ID="Label1" runat="server" Font-Size="Small" Text="Teléfono: "></asp:Label></td>
                <td style="width: 297px"><asp:TextBox ID="txtTelefono" runat="server" Width="269px" Font-Size="Small" OnTextChanged="TextBox4_TextChanged"></asp:TextBox></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese Un Numero Válido" ValidationExpression="([0-9]|-)*" ValidationGroup="telefono" Display="Dynamic" ForeColor="Red" Font-Size="Small">Ingrese solo números</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese un Teléfono">*</asp:RequiredFieldValidator>
        </td>
            </tr>
            <tr>
                <td style="width: 162px"><asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Dirección:"></asp:Label></td>
                <td style="width: 297px"><asp:TextBox ID="txtDireccion" runat="server" Width="269px" Font-Size="Small"></asp:TextBox></td>
                <td>         
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese la Dirección">*</asp:RequiredFieldValidator>
                <asp:Localize ID="Localize1" runat="server"></asp:Localize>
    </td>
            </tr>
            <tr>
                <td style="width: 162px"><asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Ciudad: "></asp:Label></td>
                <td style="width: 297px"><asp:TextBox ID="txtCuidad" runat="server" Width="177px" Font-Size="Small"></asp:TextBox></td>
                <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCuidad" ErrorMessage="Ingrese Solo Letras" ValidationExpression="[a-zA-Z]*" ValidationGroup="SoloLetrasCuidad" Display="Dynamic" ForeColor="Red" Font-Size="Small">Ingrese solo letras</asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCuidad" Display="Dynamic" ErrorMessage="Ingrese la Cuidad">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 162px"><asp:Label ID="Label6" runat="server" Font-Size="Small" Text="Correo electrónico:"></asp:Label></td>
                <td style="width: 297px"> <asp:TextBox ID="txtCorreo" runat="server" Width="269px" Font-Size="Small"></asp:TextBox></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo electrónico correcto" ValidationExpression="[\w]+@{1}[\w]+\.[a-z]{2,3}" ValidationGroup="Correo Electrónico" Display="Dynamic" Font-Overline="True" Font-Size="Small" ForeColor="Red">Correo Incorrecto</asp:RegularExpressionValidator>
         
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Correo Incorrecto">*</asp:RequiredFieldValidator></td>
            </tr>
        </table>
        <p></p>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Small" ForeColor="Red" />
     <p></p>
    <p>    
     <asp:Button ID="ButtonReservar" runat="server" Text="Reservar Ahora" BackColor="#6699FF" Font-Size="Large"  BorderColor="#003366" BorderStyle="Solid" class="btn btn-primary btn-lg" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonLimpiar" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Limpiar" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
     <p> 
       
&nbsp;&nbsp;</h16>
     <div>
         <br />
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_RESERVA_HABITACION" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="ID_RESERVA_HABITACION" HeaderText="ID_RESERVA_HABITACION" ReadOnly="True" SortExpression="ID_RESERVA_HABITACION" />
                 <asp:BoundField DataField="IDENTIFICACION_CLIENTE" HeaderText="IDENTIFICACION_CLIENTE" SortExpression="IDENTIFICACION_CLIENTE" />
                 <asp:BoundField DataField="ID_TIPO_HABITACION" HeaderText="ID_TIPO_HABITACION" SortExpression="ID_TIPO_HABITACION" />
                 <asp:BoundField DataField="CANTIDAD_HABITACIONES" HeaderText="CANTIDAD_HABITACIONES" SortExpression="CANTIDAD_HABITACIONES" />
                 <asp:BoundField DataField="FECHA_INICIO" HeaderText="FECHA_INICIO" SortExpression="FECHA_INICIO" />
                 <asp:BoundField DataField="FECHA_FIN" HeaderText="FECHA_FIN" SortExpression="FECHA_FIN" />
                 <asp:BoundField DataField="TOTAL_RESERVA" HeaderText="TOTAL_RESERVA" SortExpression="TOTAL_RESERVA" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" SelectCommand="SELECT [ID_RESERVA_HABITACION], [IDENTIFICACION_CLIENTE], [ID_TIPO_HABITACION], [CANTIDAD_HABITACIONES], [FECHA_INICIO], [FECHA_FIN], [TOTAL_RESERVA] FROM [RESERVA_HABITACION]"></asp:SqlDataSource>
         <br />
         <br />
         <br />
         <br />
    </div>
</asp:Content>
