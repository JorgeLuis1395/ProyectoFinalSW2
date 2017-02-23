<%@ Page Title="Reserva" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reserva.aspx.cs" Inherits="ProyectoV1.Reserva" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
      <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>

    <script>
    $(function () {
  $("#card-form").submit(function(event) {
    var $form = $(this);

    // Previene hacer submit más de una vez
    $form.find("button").prop("disabled", true);
    Conekta.token.create($form, conektaSuccessResponseHandler, conektaErrorResponseHandler);
   //Conekta.Token.create($form, conektaSuccessResponseHandler, conektaErrorResponseHandler); //v5+
   
    // Previene que la información de la forma sea enviada al servidor
    return false;
  });
    });
        </script>
   <script src="jquery.ui.datepicker-es.js"></script>
   

    <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepickerFechaInicioSimple").datepicker({ minDate: 0 });
        });
    </script>
    <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepickerFechaFinSimple").datepicker({ minDate: 0 });
        });
    </script>
     <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepickerFechaInicioDoble").datepicker({ minDate: 0 });
        });
    </script>
     <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepickerFechaFinDoble").datepicker({ minDate: 0 });
        });
    </script>
     <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepickerFechaInicioTriple").datepicker({ minDate: 0 });
        });
    </script>
     <script>
        $(function () {
            $.datepicker.setDefaults($.datepicker.regional["es"]);
            $("#datepickerFechaFinTriple").datepicker({ minDate: 0 });
        });
    </script>

   


} 
   
    <br>
    <br>
    <br>
    <br>
     <center><asp:Panel ID="PanelCriterios" runat="server">
    <h1>Búsqueda de Habitaciones Hotel Atacames 2</h1>
        <div> <br /> <asp:Label ID="Label2" runat="server" Text="Seleccione el tipo de habitación:"></asp:Label>
            <br />
            <div>
                <Table ID="Table1" runat="server">
                    <tr>
                        <td style="width: 122px">
                            <asp:DropDownList ID="DropDownList1" runat="server"  style="margin-bottom: 0" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                                <asp:ListItem Value="0">Seleccionar...</asp:ListItem>
                                <asp:ListItem Value="Habitación Simple">Habitación Simple</asp:ListItem>
                                <asp:ListItem Value="Habitación Matrimonial">Habitación Matrinonial</asp:ListItem>
                                <asp:ListItem Value="Habitación Doble">Habitación Doble</asp:ListItem>
                                <asp:ListItem Value="Habitación Triple">Habitación Triple</asp:ListItem>
                                <asp:ListItem Value="Habitación Triple Simple">Habitación Triple Simple</asp:ListItem>
                            </asp:DropDownList>
                            <ajaxToolkit:DropDownExtender ID="DropDownList1_DropDownExtender" runat="server" BehaviorID="DropDownList1_DropDownExtender" DynamicServicePath="" TargetControlID="DropDownList1">
                            </ajaxToolkit:DropDownExtender>
                            <td style="width: 232px">
                            <asp:Panel ID="Panel1" runat="server">
                            <center><asp:Label ID="Label1" runat="server" Text="Piso:" Visible="False"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" Visible="False" >
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                 <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                 <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                                </asp:Panel>
                        </td>
                        </td>
                            <td style="width: 232px">
                             <asp:Panel ID="Cantidad1" runat="server">
                            <asp:Label ID="LabelCantSimple" runat="server" Text="Cantidad de habitaciones:"></asp:Label>
                            <asp:DropDownList ID="DropDownCantSimple" runat="server" >
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                                
                            </asp:DropDownList>
                                  </asp:Panel>
                           </td>
                        <td>
                            
                            <asp:Panel ID="FechaInicio1" runat="server">
                            <asp:Label ID="LabelFechaInicioSimple" runat="server" Text="Fecha Inicio:"></asp:Label>
                            <asp:TextBox ID="TxtFechaInicioSimple" runat="server"  ></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TxtFechaInicioSimple" ClearTime="True" TodaysDateFormat="AAAA-MM-DD"/>
                               
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                 
                           </asp:Panel>
                                </td>
                        <td>
                            <asp:Panel ID="FechaFin1" runat="server">
                            <asp:Label ID="LabelFechaFinSimple" runat="server" Text="Fecha Fin:"></asp:Label>
                               
                                &nbsp;<asp:TextBox ID="TxtFechaFinSimple" runat="server"></asp:TextBox>
                                 <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TxtFechaFinSimple" TodaysDateFormat="AAAA-MM-DD"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       </asp:Panel>
                                 </td>
                        <td>
                            <asp:Button ID="Adicionar1" runat="server" OnClick="Adicionar1_Click" Text="+" Width="22px" />
                            <ajaxToolkit:AnimationExtender ID="Adicionar1_AnimationExtender" runat="server" BehaviorID="Adicionar1_AnimationExtender" TargetControlID="Adicionar1">
                            </ajaxToolkit:AnimationExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px; height: 39px;"> 
                            <asp:DropDownList ID="DropDownList4" runat="server" >
                                <asp:ListItem Value="0">Seleccionar...</asp:ListItem>
                                <asp:ListItem Value="Habitación Simple">Habitación Simple</asp:ListItem>
                                <asp:ListItem Value="Habitación Matrimonial">Habitación Matrimonial</asp:ListItem>
                                <asp:ListItem Value="Habitación Doble">Habitación Doble</asp:ListItem>
                                <asp:ListItem Value="Habitación Triple">Habitación Triple</asp:ListItem>
                                <asp:ListItem Value="Habitación Triple Triple">Habitación Triple Simple</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 232px">
                            <asp:Panel ID="Panel2" runat="server">
                            <center><asp:Label ID="Label4" runat="server" Text="   Piso:" Visible="False"></asp:Label>
                            <asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                 <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                 <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                                </asp:Panel>
                        </td>
                         <td style="width: 232px; height: 39px;">
                            <asp:Panel ID="Cantidad2" runat="server">
                            <asp:Label ID="LabelCantDoble" runat="server" Text="Cantidad de habitaciones:"></asp:Label>
                            <asp:DropDownList ID="DropDownCantDoble" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                                </asp:Panel>
                        </td>
                        <td style="height: 39px">
                            <asp:Panel ID="FechaInicio2" runat="server">
                            <asp:Label ID="LabelFechaInicioDoble" runat="server" Text="Fecha Inicio:"></asp:Label>
                            <asp:TextBox ID="TxtFechaInicioDoble" runat="server" ></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="TxtFechaInicioDoble"/>
                        </asp:Panel>
                                </td>
                        <td style="height: 39px">
                            <asp:Panel ID="FechaFin2" runat="server">
                            <asp:Label ID="LabelFechaFinDoble" runat="server" Text="Fecha Fin:"></asp:Label>
                                &nbsp;<asp:TextBox ID="TxtFechaFinDoble" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="TxtFechaFinDoble"/>
                        </asp:Panel>
                                </td>
                        <td style="height: 39px">
                            <asp:Button ID="Adicionar2" runat="server" OnClick="Adicionar2_Click" Text="+" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem Value="0">Seleccionar...</asp:ListItem>
                                <asp:ListItem Value="Habitación Simple">Habitación Simple</asp:ListItem>
                                <asp:ListItem Value="Habitación Matrimonial">Habitación Matrimonial</asp:ListItem>
                                <asp:ListItem Value="Habitación Doble">Habitación Doble</asp:ListItem>
                                <asp:ListItem Value="Habitación Triple">Habitación Triple</asp:ListItem>
                                <asp:ListItem Value="Habitación Triple Simple">Habitación Triple Simple</asp:ListItem>
                                
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                       <td style="width: 232px">
                            <asp:Panel ID="Panel3" runat="server">
                            <center><asp:Label ID="Label5" runat="server" Text="Piso:" Visible="False"></asp:Label>
                            <asp:DropDownList ID="DropDownList6" runat="server" Visible="False">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                 <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                 <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                                </asp:Panel>
                        </td>
                        <td style="width: 232px">
                            <asp:Panel ID="Cantidad3" runat="server">
                            <asp:Label ID="LabelCantTriple" runat="server" Text="Cantidad de habitaciones:"></asp:Label>
                            <asp:DropDownList ID="DropDownCantTriple" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                 <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                                </asp:Panel>
                        </td>
                        <td>
                            <asp:Panel ID="FechaInicio3" runat="server">
                            <asp:Label ID="LabelFechaInicioTriple" runat="server" Text="Fecha Inicio:"></asp:Label>
                               <asp:TextBox ID="TxtFechaInicioTriple" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="TxtFechaInicioTriple"/>
                        </asp:Panel>
                                </td>
                        <td>
                            <asp:Panel ID="FechaFin3" runat="server">
                            <asp:Label ID="LabelFechaFinTriple" runat="server" Text="Fecha Fin:"></asp:Label>
                                &nbsp;<asp:TextBox ID="TxtFechaFinTriple" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID="TxtFechaFinTriple"/>
                            </asp:Panel >
                                </td>
                        <td>&nbsp;</td>
                    </tr>
                 </Table>
                
               

        </div>
         </asp:Panel> </center>
    <br>
    <center><p><asp:Button ID="BtnBuscar" runat="server" Text="Buscar Habitaciones" BackColor="#6699FF" BorderColor="#003366" BorderStyle="Solid" class="btn btn-primary btn-lg" Font-Size="Large" OnClick="BtnBuscar_Click"  />
        </p></center>
    <br>
     <center> <asp:Panel ID="PanelResultados" runat="server">
    <div>


        Habitaciones disponibles:<br /> 
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged2" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PISO" HeaderText="PISO" SortExpression="PISO" />
                <asp:BoundField DataField="NUMERO_HABITACION_PISO" HeaderText="NUMERO HABITACION" SortExpression="NUMERO_HABITACION_PISO" />
                <asp:BoundField DataField="DESCRIPCION_TIPO_HABITACION" HeaderText="TIPO HABITACION" SortExpression="DESCRIPCION_TIPO_HABITACION" />
                <asp:BoundField DataField="PRECIO_TIPO_HABITACION" HeaderText="PRECIO HABITACION" SortExpression="PRECIO_TIPO_HABITACION" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <ajaxToolkit:AnimationExtender ID="GridView2_AnimationExtender" runat="server" BehaviorID="GridView2_AnimationExtender" TargetControlID="GridView2">
        </ajaxToolkit:AnimationExtender>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT HABITACION.PISO, HABITACION.NUMERO_HABITACION_PISO, TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION, TIPO_HABITACION.PRECIO_TIPO_HABITACION  FROM HABITACION INNER JOIN TIPO_HABITACION ON HABITACION.ID_TIPO_HABITACION = TIPO_HABITACION.ID_TIPO_HABITACION  WHERE (TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION = @DESCRIPCION_TIPO_HABITACION) AND (HABITACION.ESTADO = 0) ">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="DESCRIPCION_TIPO_HABITACION" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PISO" HeaderText="PISO" SortExpression="PISO" />
                <asp:BoundField DataField="NUMERO_HABITACION_PISO" HeaderText="NUMERO_HABITACION_PISO" SortExpression="NUMERO_HABITACION_PISO" />
                <asp:BoundField DataField="DESCRIPCION_TIPO_HABITACION" HeaderText="DESCRIPCION_TIPO_HABITACION" SortExpression="DESCRIPCION_TIPO_HABITACION" />
                <asp:BoundField DataField="PRECIO_TIPO_HABITACION" HeaderText="PRECIO_TIPO_HABITACION" SortExpression="PRECIO_TIPO_HABITACION" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" SelectCommand="SELECT HABITACION.PISO, HABITACION.NUMERO_HABITACION_PISO, TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION, TIPO_HABITACION.PRECIO_TIPO_HABITACION, TIPO_HABITACION.IMAGEN_HABITACION, TIPO_HABITACION.DETALLE1, TIPO_HABITACION.DETALLE2, TIPO_HABITACION.DETALLE3, TIPO_HABITACION.DETALLE4, TIPO_HABITACION.DETALLE5, TIPO_HABITACION.DETALLE6, TIPO_HABITACION.DETALLE7, TIPO_HABITACION.DETALLE8, TIPO_HABITACION.IMAGEN_HABITACION AS Expr1 FROM HABITACION INNER JOIN TIPO_HABITACION ON HABITACION.ID_TIPO_HABITACION = TIPO_HABITACION.ID_TIPO_HABITACION CROSS JOIN RESERVA_HABITACION WHERE (TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION = @DESCRIPCION_TIPO_HABITACION) AND (HABITACION.ESTADO = 0) AND (HABITACION.PISO = @PISO)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="DESCRIPCION_TIPO_HABITACION" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList3" Name="PISO" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PISO" HeaderText="PISO" SortExpression="PISO" />
                <asp:BoundField DataField="NUMERO_HABITACION_PISO" HeaderText="NUMERO HABITACION" SortExpression="NUMERO_HABITACION_PISO" />
                <asp:BoundField DataField="DESCRIPCION_TIPO_HABITACION" HeaderText="TIPO HABITACION" SortExpression="DESCRIPCION_TIPO_HABITACION" />
                <asp:BoundField DataField="PRECIO_TIPO_HABITACION" HeaderText="PRECIO HABITACION" SortExpression="PRECIO_TIPO_HABITACION" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" SelectCommand="SELECT HABITACION.PISO, HABITACION.NUMERO_HABITACION_PISO, TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION, TIPO_HABITACION.PRECIO_TIPO_HABITACION, TIPO_HABITACION.IMAGEN_HABITACION, TIPO_HABITACION.DETALLE1, TIPO_HABITACION.DETALLE2, TIPO_HABITACION.DETALLE3, TIPO_HABITACION.DETALLE4, TIPO_HABITACION.DETALLE5, TIPO_HABITACION.DETALLE6, TIPO_HABITACION.DETALLE7, TIPO_HABITACION.DETALLE8, TIPO_HABITACION.IMAGEN_HABITACION AS Expr1 FROM HABITACION INNER JOIN TIPO_HABITACION ON HABITACION.ID_TIPO_HABITACION = TIPO_HABITACION.ID_TIPO_HABITACION CROSS JOIN RESERVA_HABITACION WHERE (TIPO_HABITACION.DESCRIPCION_TIPO_HABITACION = @DESCRIPCION_TIPO_HABITACION) AND (HABITACION.ESTADO = 0) AND (HABITACION.PISO = @PISO)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList5" Name="DESCRIPCION_TIPO_HABITACION" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList6" Name="PISO" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged" >
        <div>
    

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

     <div class="item active">
         
        <center> <asp:View ID="View1" runat="server">
             <asp:Label ID="Label32" runat="server" Text="Información detallada " Font-Size="Large"></asp:Label>
              <br />
              <div>
                  <div class="carousel-caption" style="left: 12%; right: 18%; bottom: 2432px; height: 5081px;">
                      &nbsp;
                  </div>
                  <div id="myCarousel0" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                          <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                          <li data-slide-to="1" data-target="#myCarousel"></li>
                          <li data-slide-to="2" data-target="#myCarousel"></li>
                          <li data-slide-to="3" data-target="#myCarousel"></li>
                          <li data-slide-to="4" data-target="#myCarousel"></li>
                          <li data-slide-to="5" data-target="#myCarousel"></li>
                      </ol>
                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" role="listbox">
                          <div class="item active">
                              <center>
                                  <img src="Imagenes/simple1.jpg" style="width: 932px; height: 407px" />
                                  <br />
                                  <br />
                              </center>
                              <div class="carousel-caption" style="left: 15%; right: 15%; bottom: 20px">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/simple2.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/imple3.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/simple4.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/simple1.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                      </div>
                      <!-- Left and right controls --><a class="left carousel-control" data-slide="prev" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" data-slide="next" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
                  </div>
              </div>

             <br />
             <asp:Label ID="Label41" runat="server" Font-Size="Large" Text="Detalles"></asp:Label>
             <br>
             <center>
                 <li><asp:Label ID="Label33" runat="server" Text="Vista a la piscina" Font-Size="Small"></asp:Label>
                 <br />
                 <li>&nbsp;<asp:Label ID="Label34" runat="server" Text="WiFi                          " Font-Size="Small"></asp:Label>
                 <br />
                 <li><asp:Label ID="Label36" runat="server" Text="TV pantalla plana" Font-Size="Small"></asp:Label>
                 <br />
                <li> 
                    <asp:Label ID="Label42" runat="server" Font-Size="Small" Text="TV-Cable "></asp:Label>
                 <br />
                 <li><asp:Label ID="Label38" runat="server" Text="Cama Simple" Font-Size="Small"></asp:Label>
                 <br />
                 <li><asp:Label ID="Label39" runat="server" Text="Baño Privado" Font-Size="Small"></asp:Label>
                 <br />
                 <li><asp:Label ID="Label40" runat="server" Text="Aire Acondicionado" Font-Size="Small"></asp:Label>
             <br>
             </center>
             
         </asp:View></center>
     </div>

       
      </div>
      
      </div>
  
            <asp:View ID="View3" runat="server">
                <center>
                  
                        <asp:Label ID="Label43" runat="server" Font-Size="Large" Text="Información detallada "></asp:Label>
                        <br />
                        <div>
                            <div class="carousel-caption" style="left: 12%; right: 18%; bottom: 793px">
                                &nbsp;
                            </div>
                            <div id="myCarousel1" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                                    <li data-slide-to="1" data-target="#myCarousel"></li>
                                    <li data-slide-to="2" data-target="#myCarousel"></li>
                                    <li data-slide-to="3" data-target="#myCarousel"></li>
                                    <li data-slide-to="4" data-target="#myCarousel"></li>
                                    <li data-slide-to="5" data-target="#myCarousel"></li>
                                </ol>
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <center>
                                            <img src="Imagenes/matrimonial1.jpg" style="width: 932px; height: 407px" />
                                            <br />
                                            <br />
                                        </center>
                                        <div class="carousel-caption" style="left: 15%; right: 15%; bottom: 20px">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/matrimonial2.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/matrimonial3.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/matrimonial4.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/matrimonial1.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                </div>
                                <!-- Left and right controls --><a class="left carousel-control" data-slide="prev" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" data-slide="next" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
                            </div>
                        </div>
                        <br />
                        <asp:Label ID="Label44" runat="server" Font-Size="Large" Text="Detallades"></asp:Label>
                        <br>
                        <center>
                            <li>
                                <asp:Label ID="Label45" runat="server" Font-Size="Small" Text="Vista a la piscina"></asp:Label>
                                <br />
                                <li>&nbsp;<asp:Label ID="Label46" runat="server" Font-Size="Small" Text="WiFi                          "></asp:Label>
                                    <br />
                                    <li>
                                        <asp:Label ID="Label47" runat="server" Font-Size="Small" Text="TV pantalla plana"></asp:Label>
                                        <br />
                                        <li>
                                            <asp:Label ID="Label48" runat="server" Font-Size="Small" Text="TV-Cable "></asp:Label>
                                            <br />
                                            <li>
                                                <asp:Label ID="Label49" runat="server" Font-Size="Small" Text="Cama Matrimonial, jacu"></asp:Label>
                                                <br />
                                                <li>
                                                    <asp:Label ID="Label50" runat="server" Font-Size="Small" Text="Baño Privado"></asp:Label>
                                                    <br />
                                                    <li>
                                                        <asp:Label ID="Label51" runat="server" Font-Size="Small" Text="Aire Acondicionado"></asp:Label>
                                                        
                                                    </li>
                                                </li>
                                            </li>
                                        </li>
                                    </li>
                                </li>
                            </li>
                        </center>
                    
                    </asp:View>
                </center>
            </asp:View>
            <asp:View ID="View5" runat="server">
            <center>
                  
                        <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="Información detallada "></asp:Label>
                        <br />
                        <div>
                            <div class="carousel-caption" style="left: 12%; right: 18%; bottom: 793px">
                                &nbsp;
                            </div>
                            <div id="myCarousel1" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                                    <li data-slide-to="1" data-target="#myCarousel"></li>
                                    <li data-slide-to="2" data-target="#myCarousel"></li>
                                    <li data-slide-to="3" data-target="#myCarousel"></li>
                                    <li data-slide-to="4" data-target="#myCarousel"></li>
                                    <li data-slide-to="5" data-target="#myCarousel"></li>
                                </ol>
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <center>
                                            <img src="Imagenes/triplecs1.jpg" style="width: 932px; height: 407px" />
                                            <br />
                                            <br />
                                        </center>
                                        <div class="carousel-caption" style="left: 15%; right: 15%; bottom: 20px">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/tripecs2.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/triplecs3.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/triplecs4.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                    <div class="item">
                                        <center>
                                            <img height="407" src="Imagenes/matrimonial1.jpg" width="932" />
                                        </center>
                                        <div class="carousel-caption">
                                        </div>
                                    </div>
                                </div>
                                <!-- Left and right controls --><a class="left carousel-control" data-slide="prev" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" data-slide="next" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
                            </div>
                        </div>
                        <br />
                        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="Detallades"></asp:Label>
                        <br>
                        <center>
                            <li>
                                <asp:Label ID="Label24" runat="server" Font-Size="Small" Text="Vista a la piscina"></asp:Label>
                                <br />
                                <li>&nbsp;<asp:Label ID="Label61" runat="server" Font-Size="Small" Text="WiFi                          "></asp:Label>
                                    <br />
                                    <li>
                                        <asp:Label ID="Label62" runat="server" Font-Size="Small" Text="TV pantalla plana"></asp:Label>
                                        <br />
                                        <li>
                                            <asp:Label ID="Label63" runat="server" Font-Size="Small" Text="TV-Cable "></asp:Label>
                                            <br />
                                            <li>
                                                <asp:Label ID="Label64" runat="server" Font-Size="Small" Text="Tres camas Simples"></asp:Label>
                                                <br />
                                                <li>
                                                    <asp:Label ID="Label65" runat="server" Font-Size="Small" Text="Baño Privado"></asp:Label>
                                                    <br />
                                                    <li>
                                                        <asp:Label ID="Label66" runat="server" Font-Size="Small" Text="Aire Acondicionado"></asp:Label>
                                                        
                                                    </li>
                                                </li>
                                            </li>
                                        </li>
                                    </li>
                                </li>
                            </li>
                        </center>
                    
                    </asp:View>
                </center>
            <asp:View ID="View4" runat="server">
                <asp:Label ID="Label52" runat="server" Font-Size="Large" Text="Información detallada "></asp:Label>
                <br />
                <div>
                    <div class="carousel-caption" style="left: 12%; right: 18%; bottom: 2432px; height: 5081px;">
                        &nbsp;<br>
                       
                    </div>
                    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                            <li data-slide-to="1" data-target="#myCarousel"></li>
                            <li data-slide-to="2" data-target="#myCarousel"></li>
                            <li data-slide-to="3" data-target="#myCarousel"></li>
                            <li data-slide-to="4" data-target="#myCarousel"></li>
                            <li data-slide-to="5" data-target="#myCarousel"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <center>
                                    <img src="Imagenes/triple1.jpg" style="width: 932px; height: 407px" />
                                    <br />
                                    <br />
                                </center>
                                <div class="carousel-caption" style="left: 15%; right: 15%; bottom: 20px">
                                </div>
                            </div>
                            <div class="item">
                                <center>
                                    <img height="407" src="Imagenes/triple2.jpg" width="932" />
                                </center>
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="item">
                                <center>
                                    <img height="407" src="Imagenes/triple3.jpg" width="932" />
                                </center>
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="item">
                                <center>
                                    <img height="407" src="Imagenes/triple4.jpg" width="932" />
                                </center>
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="item">
                                <center>
                                    <img height="407" src="Imagenes/simple1.jpg" width="932" />
                                </center>
                                <div class="carousel-caption">
                                </div>
                            </div>
                        </div>
                        <!-- Left and right controls --><a class="left carousel-control" data-slide="prev" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" data-slide="next" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
                    </div>
                </div>
                <br />
                <asp:Label ID="Label53" runat="server" Font-Size="Large" Text="Detallades"></asp:Label>
                <br>
                <center>
                    <li>
                        <asp:Label ID="Label54" runat="server" Font-Size="Small" Text="Vista a la piscina"></asp:Label>
                        <br />
                        <li>&nbsp;<asp:Label ID="Label55" runat="server" Font-Size="Small" Text="WiFi                          "></asp:Label>
                            <br />
                            <li>
                                <asp:Label ID="Label56" runat="server" Font-Size="Small" Text="TV pantalla plana"></asp:Label>
                                <br />
                                <li>
                                    <asp:Label ID="Label57" runat="server" Font-Size="Small" Text="TV-Cable "></asp:Label>
                                    <br />
                                    <li>
                                        <asp:Label ID="Label58" runat="server" Font-Size="Small" Text="Cama Matrimonial, Cama Individual"></asp:Label>
                                        <br />
                                        <li>
                                            <asp:Label ID="Label59" runat="server" Font-Size="Small" Text="Baño Privado"></asp:Label>
                                            <br />
                                            <li>
                                                <asp:Label ID="Label60" runat="server" Font-Size="Small" Text="Aire Acondicionado"></asp:Label>
                
            </asp:View>
            <asp:View ID="View2" runat="server">
             <asp:Label ID="Label7" runat="server" Text="Información detallada " Font-Size="Large"></asp:Label>
              <br />
              <div>
                  <div class="carousel-caption" style="left: 12%; right: 18%; bottom: 793px">
                      &nbsp;<br>
                  </div>
                  <div id="myCarousel0" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                          <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                          <li data-slide-to="1" data-target="#myCarousel"></li>
                          <li data-slide-to="2" data-target="#myCarousel"></li>
                          <li data-slide-to="3" data-target="#myCarousel"></li>
                          <li data-slide-to="4" data-target="#myCarousel"></li>
                          <li data-slide-to="5" data-target="#myCarousel"></li>
                      </ol>
                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" role="listbox">
                          <div class="item active">
                              <center>
                                  <img src="Imagenes/doblecs1.jpg" style="width: 932px; height: 407px" />
                                  <br />
                                  <br />
                              </center>
                              <div class="carousel-caption" style="left: 15%; right: 15%; bottom: 20px">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/doblecs2.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/doblecs3.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                          <div class="item">
                              <center>
                                  <img height="407" src="Imagenes/doblecs4.jpg" width="932" />
                              </center>
                              <div class="carousel-caption">
                              </div>
                          </div>
                          
                      </div>
                      <!-- Left and right controls --><a class="left carousel-control" data-slide="prev" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" data-slide="next" href="#myCarousel" role="button"><span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
                  </div>
              </div>

             <br />
             <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="Detallades"></asp:Label>
             <br>
             <center>
                 <li><asp:Label ID="Label10" runat="server" Text="Vista a la piscina" Font-Size="Small"></asp:Label>
                 <br />
                 <li>&nbsp;<asp:Label ID="Label11" runat="server" Text="WiFi                          " Font-Size="Small"></asp:Label>
                 <br />
                 <li><asp:Label ID="Label12" runat="server" Text="TV pantalla plana" Font-Size="Small"></asp:Label>
                 <br />
                <li> 
                    <asp:Label ID="Label13" runat="server" Font-Size="Small" Text="TV-Cable "></asp:Label>
                 <br />
                 <li><asp:Label ID="Label14" runat="server" Text="Cama Simple" Font-Size="Small"></asp:Label>
                 <br />
                 <li><asp:Label ID="Label35" runat="server" Text="Baño Privado" Font-Size="Small"></asp:Label>
                 <br />
                 <li><asp:Label ID="Label37" runat="server" Text="Aire Acondicionado" Font-Size="Small"></asp:Label>
             <br>
             </center>
          
         </asp:View></center>
     </div>

       
      </div>
      
      </div>
    </div>

    
  </div>
</div>
        </div>
        </asp:MultiView>
        <div>
            <br>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#6699FF" BorderColor="#003366" BorderStyle="Solid" class="btn btn-primary btn-lg" Font-Size="Large" OnClick="Button1_Click1" Text="Reservar" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#6699FF" BorderColor="#003366" BorderStyle="Solid" class="btn btn-primary btn-lg" Font-Size="Large" Text="Atras" OnClick="Button2_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Registre sus Datos"></asp:Label>
        
        </div>
        <br />
        <asp:Label ID="Label30" runat="server" ForeColor="Red" Text="* Son Campos Obligatorios"></asp:Label>
        <br />
        
        <table id="Table2" class="nav-justified"  runat="server">
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label16" runat="server" Font-Size="Small" Text="Tipo de Identificación:"></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:DropDownList ID="DropDownList7" runat="server" Font-Size="Small" Height="20px" Width="177px">
                        <asp:ListItem>Cédula</asp:ListItem>
                        <asp:ListItem>Pasaporte</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Font-Size="Small" Text="N° de Identificación: "></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server" Font-Size="Small" Width="174px"></asp:TextBox>
                    <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Solo Numeros" Font-Size="Small" ForeColor="Red" ValidationExpression="([0-9]|-)*" ValidationGroup="Identificacion">Ingrese Solo Numeros</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCedula" Display="Dynamic" ErrorMessage="Ingrese su N° de Identificacion">*</asp:RequiredFieldValidator>
                    <asp:Label ID="mensaje" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="Primer Nombre:"></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtNombre" runat="server" Font-Size="Small" ValidateRequestMode="Enabled" Width="269px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label27" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Ingrese Solo Letras" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-ZÁÉÍÓÚ]{1}[a-zñáéíóú]+[\s]*)" ValidationGroup="SoloLetras">Ingrese Solo Un Nombre</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Ingrese un Nombre">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Primer Apellido:"></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtApellido" runat="server" Font-Size="Small"  Width="269px"></asp:TextBox>
                    <ajaxToolkit:AnimationExtender ID="txtApellido_AnimationExtender" runat="server" BehaviorID="txtApellido_AnimationExtender" TargetControlID="txtApellido">
                    </ajaxToolkit:AnimationExtender>
                </td>
                <td>
                    <asp:Label ID="Label28" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="Ingrese Solo Letras" Font-Size="Small" ForeColor="Red" ValidationExpression="[a-zA-Z]*" ValidationGroup="SoloLetrasApellido">Ingrese Solo Apellido Paterno</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="Ingrese un Apellido">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label18" runat="server" Font-Size="Small" Text="Teléfono: "></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtTelefono" runat="server" Font-Size="Small"  Width="269px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono" Display="Dynamic" ErrorMessage="Ingrese Un Numero Válido" Font-Size="Small" ForeColor="Red" ValidationExpression="([0-9]|-)*" ValidationGroup="telefono">Ingrese solo números</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese un Teléfono">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label19" runat="server" Font-Size="Small" Text="Dirección:"></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtDireccion" runat="server" Font-Size="Small" Width="269px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese la Dirección" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" Text="Ciudad: "></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtCuidad" runat="server" Font-Size="Small" Width="177px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCuidad" Display="Dynamic" ErrorMessage="Ingrese Solo Letras" Font-Size="Small" ForeColor="Red" ValidationExpression="[a-zA-Z]*" ValidationGroup="SoloLetrasCuidad">Ingrese solo letras</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCuidad" Display="Dynamic" ErrorMessage="Ingrese la Cuidad">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="width: 162px">
                    <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="Correo electrónico:"></asp:Label>
                </td>
                <td style="width: 297px">
                    <asp:TextBox ID="txtCorreo" runat="server" Font-Size="Small" Width="269px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label29" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Ingrese un correo electrónico correcto" Font-Overline="True" Font-Size="Small" ForeColor="Red" ValidationExpression="[\w]+@{1}[\w]+\.[a-z]{2,3}" ValidationGroup="Correo Electrónico">Correo Incorrecto</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Correo Incorrecto">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Cantidad de Personas: "></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:Label ID="Label31" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
        </table>
        <br />

    </div>
    </asp:Panel></center>
    <p>
        
        <asp:Label ID="cost" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="tip" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="num" runat="server"></asp:Label>
      </p>
      <p>
        
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Small" ForeColor="Red" />
      <p>
        
          <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" >
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="DESCRIPCION_SERVICIO" HeaderText="DESCRIPCION_SERVICIO" SortExpression="DESCRIPCION_SERVICIO" />
                  <asp:BoundField DataField="PRECIO_SERVICIO" HeaderText="PRECIO_SERVICIO" SortExpression="PRECIO_SERVICIO" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoV1.Properties.Settings.Software2 %>" SelectCommand="SELECT [DESCRIPCION_SERVICIO], [PRECIO_SERVICIO] FROM [SERVICIO]"></asp:SqlDataSource>
      </p>
      <p>
        
          &nbsp;</p>
      <p>
        
          &nbsp;</p>
      <div>
          <asp:GridView ID="GridView6" runat="server" DataSourceID="SqlDataSource5">
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
      </div>
      <p>
        
          &nbsp;</p>
      <div>
     <asp:Button ID="ButtonReservar" runat="server" Text="Confirmar Reserva" BackColor="#6699FF" Font-Size="Large"  BorderColor="#003366" BorderStyle="Solid" class="btn btn-primary btn-lg" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonLimpiar" runat="server" BackColor="#6699FF" Font-Size="Large" Text="Limpiar" BorderColor="Yellow" class="btn btn-primary btn-lg" OnClick="Button2_Click" />
          <br />
      </div>
      <p>
        
          &nbsp;</p>
      </div>
</asp:Content>
