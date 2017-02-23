<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminConsultas.aspx.cs" Inherits="ProyectoV1.AdminConsultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
            <asp:MenuItem Text="Clientes" Value="Clientes"></asp:MenuItem>
            <asp:MenuItem Text="Habitaciones" Value="Habitaciones"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <p>
    </p>
    <p>
    </p>
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Cliente "></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IDENTIFICACION_CLIENTE" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IDENTIFICACION_CLIENTE" HeaderText="IDENTIFICACION_CLIENTE" ReadOnly="True" SortExpression="IDENTIFICACION_CLIENTE" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" SortExpression="APELLIDO" />
                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO" />
                <asp:BoundField DataField="CORREO_ELECTRONICO" HeaderText="CORREO_ELECTRONICO" SortExpression="CORREO_ELECTRONICO" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" InsertCommand="insert into Cliente values [NOMBRE], [APELLIDO], [DIRECCION], [TELEFONO], [CORREO_ELECTRONICO]" SelectCommand="SELECT [IDENTIFICACION_CLIENTE], [NOMBRE], [APELLIDO], [DIRECCION], [TELEFONO], [CORREO_ELECTRONICO] FROM [CLIENTE]  " UpdateCommand="UPDATE Cliente SET [NOMBRE], [APELLIDO], [DIRECCION], [TELEFONO], [CORREO_ELECTRONICO] where [IDENTIFICACION_CLIENTE] = @IDENTIFICACION_CLIENTE">
            <UpdateParameters>
                <asp:Parameter Name="IDENTIFICACION_CLIENTE" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Habitación"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID_TIPO_HABITACION" HeaderText="ID_TIPO_HABITACION" SortExpression="ID_TIPO_HABITACION" />
                <asp:BoundField DataField="NUMERO_HABITACION_PISO" HeaderText="NUMERO_HABITACION_PISO" SortExpression="NUMERO_HABITACION_PISO" />
                <asp:BoundField DataField="PISO" HeaderText="PISO" SortExpression="PISO" />
                <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" SelectCommand="SELECT [ID_TIPO_HABITACION], [NUMERO_HABITACION_PISO], [PISO], [ESTADO] FROM [HABITACION]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Habitaciónes Reservadas"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="PISO" HeaderText="PISO" SortExpression="PISO" />
                <asp:BoundField DataField="NUMERO_HABITACION_PISO" HeaderText="NUMERO_HABITACION_PISO" SortExpression="NUMERO_HABITACION_PISO" />
                <asp:BoundField DataField="DESCRIPCION_TIPO_HABITACION" HeaderText="DESCRIPCION_TIPO_HABITACION" SortExpression="DESCRIPCION_TIPO_HABITACION" />
                <asp:BoundField DataField="PRECIO_TIPO_HABITACION" HeaderText="PRECIO_TIPO_HABITACION" SortExpression="PRECIO_TIPO_HABITACION" />
                <asp:BoundField DataField="DETALLE1" HeaderText="DETALLE1" SortExpression="DETALLE1" />
                <asp:BoundField DataField="DETALLE2" HeaderText="DETALLE2" SortExpression="DETALLE2" />
                <asp:BoundField DataField="DETALLE3" HeaderText="DETALLE3" SortExpression="DETALLE3" />
                <asp:BoundField DataField="DETALLE4" HeaderText="DETALLE4" SortExpression="DETALLE4" />
                <asp:BoundField DataField="DETALLE5" HeaderText="DETALLE5" SortExpression="DETALLE5" />
                <asp:BoundField DataField="DETALLE6" HeaderText="DETALLE6" SortExpression="DETALLE6" />
                <asp:BoundField DataField="DETALLE7" HeaderText="DETALLE7" SortExpression="DETALLE7" />
                <asp:BoundField DataField="DETALLE8" HeaderText="DETALLE8" SortExpression="DETALLE8" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" SelectCommand="SELECT HABITACION.PISO, HABITACION.NUMERO_HABITACION_PISO, TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION, TIPO_HABITACION.PRECIO_TIPO_HABITACION, TIPO_HABITACION.IMAGEN_HABITACION, TIPO_HABITACION.DETALLE1, TIPO_HABITACION.DETALLE2, TIPO_HABITACION.DETALLE3, TIPO_HABITACION.DETALLE4, TIPO_HABITACION.DETALLE5, TIPO_HABITACION.DETALLE6, TIPO_HABITACION.DETALLE7, TIPO_HABITACION.DETALLE8, TIPO_HABITACION.IMAGEN_HABITACION AS Expr1 FROM HABITACION INNER JOIN TIPO_HABITACION ON HABITACION.ID_TIPO_HABITACION = TIPO_HABITACION.ID_TIPO_HABITACION CROSS JOIN RESERVA_HABITACION WHERE (HABITACION.ESTADO = 1)"></asp:SqlDataSource>
        <br />
    </div>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
