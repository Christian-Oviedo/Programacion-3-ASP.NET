<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SesionUsuario.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Programacion 3</title>
</head>
<body style="background-color:lemonchiffon">
    <form id="form1" runat="server">
           <div class="jumbotron">
        <h1 style="color: darkblue">Completar los campos</h1>
        <p class="lead">Programacion 3, eventos y tipos de controles de ASP.NET.<br />
            La programación es el proceso de creación de programas informáticos. <br />
            Esta definición se puede  interpretar de la siguiente manera.<br /> 
            La programación no es más que una explicación a la computadora de qué, en qué forma y cómo llegar al usuario.</enum></p>
      
    </div>
        <div style="height: 1827px">
           <h4>Apoyar sobre el txtbox para ver el cartel de ayuda</h4> 
            <asp:TextBox ID="txtSingleLine" runat="server" Columns="14" ToolTip="Textbox de una linea"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <h4>Solamente lectura</h4> 
            <asp:TextBox ID="txtRO" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <h4>Poner hasta un maximo de 5 letras</h4>
            <asp:TextBox ID="txtMaxLenght" runat="server" MaxLength="5"></asp:TextBox>
            <br />
            <h4>Escribir comentarios</h4>
            <asp:TextBox ID="txtMultiline" runat="server" Height="58px" Rows="3" TextMode="MultiLine"></asp:TextBox>
            <br />
            <h4>Colocar contraseña</h4>
            
            <asp:TextBox ID="txtPassword" runat="server" Rows="3" TextMode="Password"></asp:TextBox>
            <br />
           
            <h4>Selecciona alguna opcion para ver su indice valor</h4> 
            <asp:DropDownList ID="ddlFrutas" runat="server">
                <asp:ListItem Value="1">Manzana</asp:ListItem>
                <asp:ListItem Value="2">Pera</asp:ListItem>
                <asp:ListItem Value="3">Durazno</asp:ListItem>
                <asp:ListItem Value="4">Guayaba</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnPrueba" runat="server" OnClick="btnPrueba_Click" Text="Pruebas" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSeleccionado" runat="server" Text="Fruta"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblIndice" runat="server" Text="Indice"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblValor" runat="server" Text="Value"></asp:Label>
           
            <h4>Seleccionar alguna opcion:</h4 >
            
            <asp:RadioButton ID="rbtnPizza" runat="server" GroupName="alimentos" Text="Pizza" />
            <asp:RadioButton ID="rbtnFrutas" runat="server" GroupName="alimentos" Text="Frutas" />
            <asp:RadioButton ID="rbtnVerduras" runat="server" GroupName="alimentos" Text="Verduras" />
            <br />
            <asp:Button ID="btnProcesa" runat="server" OnClick="btnProcesa_Click" Text="Procesa" />
            &nbsp;La respuesta esta al inicio del programa.<br />
            <h4>Colocar una cantidad a pagar y seleccionar alguna opcion</h4>
            Checkbox para calcular el total<br />Total a Pagar<asp:TextBox ID="txtTotalPagar" runat="server">0</asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="cbxQueso" runat="server" Text="Extra Queso" />
            <br />
            <asp:CheckBox ID="cbxPapas" runat="server" Checked="True" Text="Papas" />
            <br />
            <asp:CheckBox ID="cbxBebida" runat="server" Text="Bebida" />
            <br />
            <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular" />
            <br />Total:&nbsp;
            <asp:Label ID="lblTotal" runat="server" Text="$0"></asp:Label>
            
            <h4>Lista ordenada</h4>
            <asp:BulletedList ID="blLista" runat="server" style="margin-right: 315px" BulletStyle="UpperAlpha">

                 <asp:ListItem Value="1">Manzana</asp:ListItem>
                 <asp:ListItem Value="2">Pera</asp:ListItem>
                 <asp:ListItem Value="3">Ciruela</asp:ListItem>
                 <asp:ListItem Value="4">Banana</asp:ListItem>
            </asp:BulletedList>
            <h4>Lista&nbsp; desordenada con enlaces</h4>
            <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink">
                <asp:ListItem Value="https://www.google.com/?hl=es">Google</asp:ListItem>
                <asp:ListItem Value="https://www.youtube.com/">Youtube</asp:ListItem>
                <asp:ListItem Value="https://www.facebook.com/">Facebook</asp:ListItem>
            </asp:BulletedList>
          
            <h4>Link ITSC otra pestaña</h4>
            <asp:HyperLink ID="hlInstituto" runat="server" NavigateUrl="https://www.institutotecnicocordoba.com/" Target="_blank">Instituto Tecnico Superior de Cordoba</asp:HyperLink>
            
            <br />
            <h4>Link Webform2<br /></h4>
            <asp:HyperLink ID="hpWF2" runat="server" NavigateUrl="~/WebForm2.aspx">WebForms2</asp:HyperLink>
            
            <h4>Link imagen otra pestaña</h4>
            <asp:HyperLink ID="hpImagen" runat="server" ImageUrl="~/inst.png" NavigateUrl="https://www.institutotecnicocordoba.com/" Target="_blank">Link con Imagen</asp:HyperLink>
            
           
            <h4>Link Button del lado del cliente y WF2</h4>
            <asp:LinkButton ID="lkbScript" runat="server" PostBackUrl="~/WebForm2.aspx" OnClientClick="return Funcion();">Script</asp:LinkButton>

            <script type="text/javascript">
                function Funcion() {
                    alert("soy una funcion de js");

                    return true;
                }


            </script>
            
            <h4>
            Seleccionar para hacer aparecer el calendario</h4>
            <asp:Button ID="btnCalendario" runat="server" OnClick="btnCalendario_Click" Text="Calendario" />
            <br />
            <asp:Calendar ID="Calendario" runat="server" OnSelectionChanged="Calendario_SelectionChanged"></asp:Calendar>
            Seleccionar fecha para verla en el textbox<br />
            <asp:TextBox ID="txtFecha" runat="server" Width="249px"></asp:TextBox>
            <br />
            <br />



        </div>
    </form>
</body>
</html>
