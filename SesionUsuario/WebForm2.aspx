<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SesionUsuario.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            Te encuentras en la segunda pagina, aqui se pueden ver los tipos de eventos
            <br />
            ......................................................................................<br />
            Evento Postback <br />
            <asp:Button ID="btnPostback" runat="server" OnClick="btnPostback_Click" Text="Postback" />
            <asp:Label ID="lblMensajePB" runat="server" Text="Antes del Postback"></asp:Label>
            <br />
            Evento Cached<br />
            <asp:TextBox ID="txtCached" runat="server" OnTextChanged="txtCached_TextChanged"></asp:TextBox>
            <asp:Label ID="lblCached" runat="server" Text="No ha sucedido el evento Cached"></asp:Label>
            <br />
            Evento Validacion<br />
            <asp:TextBox ID="txtValidacion" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVtxtValidacion" runat="server" ControlToValidate="txtValidacion" ErrorMessage="Mi mensaje  de Error"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
