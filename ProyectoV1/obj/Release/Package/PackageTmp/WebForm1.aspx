<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProyectoV1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="642px" ImageUrl="~/Imagenes/MantenimientoServidor.jpg" Width="1276px" />
        <ajaxToolkit:AnimationExtender ID="Image1_AnimationExtender" runat="server" BehaviorID="Image1_AnimationExtender" TargetControlID="Image1">
        </ajaxToolkit:AnimationExtender>
    
    </div>
    </form>
</body>
</html>
