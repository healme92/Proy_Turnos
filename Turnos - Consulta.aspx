<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Turnos - Consulta.aspx.cs" Inherits="Principal.Turnos___Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Consulta y asignación de turnos"></asp:Label>
            <br />
            <br />
            Número de cedula:
            <asp:TextBox ID="tbCedula" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="btConsultar" runat="server" OnClick="btConsultar_Click" Text="Consultar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<br />
            Nombre: <asp:TextBox ID="tbNombre" runat="server" Width="211px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Turno"></asp:Label>
            :
            <asp:Label ID="lbTurno" runat="server" Text="lbTurno"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            H. llegada:
            <asp:TextBox ID="tbHLlegada" runat="server"  TextMode="Time" Width="139px"></asp:TextBox>
            <br />
&nbsp;
            <br />
&nbsp;<asp:Button ID="btAsigTurno" runat="server" OnClick="btAsigTurno_Click" Text="Asignar turno" />
            <br />
            <br />
            <asp:Label ID="lbMensaje" runat="server" CssClass="auto-style1" Text="Mensaje"></asp:Label>
        </div>
    </form>
</body>
</html>
