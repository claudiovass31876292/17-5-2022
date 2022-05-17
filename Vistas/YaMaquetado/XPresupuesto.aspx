﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XPresupuesto.aspx.cs" Inherits="TrabajoIntegradorLab3.Presupuesto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href ="StyleSheet1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <style type="text/css">
        .auto-style1 {
            width: 997px;
            height: 68px;
        }
        .auto-style2 {
            text-align: left;
            margin-left: 160px;
        }
        .auto-style3 {
            width: 1066px;
        }
        .auto-style4 {
            margin-left: 10px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

    <div id="Contenedor" class="auto-style3">

        <header>
            <h1 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenidos a A&TI Revestimientos</h1>
        </header>

        <nav>
            <h2 class="auto-style2">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YaMaquetado/Clientes.aspx">Clientes</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/YaMaquetado/Franquisias.aspx">Franquicias</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx.cs">Cuenta</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YaMaquetado/Productos.aspx">Productos</asp:HyperLink>
&nbsp;</h2>
        </nav>

        <section id="contenido">
            <article>
                <h2>Necesita un presupuesto ?</h2>
                <p>Complete sus datos para obtener atencion personalizada.</p>
                <p>&nbsp;</p>
                <p>Nombre:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
                <p>Telefono:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
                <p>Localidad:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
                <p>Email:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
                <p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="234px">
                    </asp:DropDownList>
                </p>
                <p>&nbsp;</p>
                <p>Consulta:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </p>
                <p>&nbsp;</p>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Envie su consulta" Width="290px" />
                </p>
                <p>&nbsp;</p>
            </article>
        </section>

        <aside class="auto-style4">
          <h2 class="auto-style5">Nuevos productos</h2>
            <p class="auto-style5">&nbsp;</p>
            <p class="auto-style7">Vea todos nuestros mas nuevos productos en Nuestro apartado de </p>
            <p class="auto-style7">
                <asp:HyperLink ID="Productos_2" runat="server" NavigateUrl="~/Productos.aspx">Productos</asp:HyperLink>
                .</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            
        </aside>

        <footer>
            <h2 class="auto-style5">Diseñamos para que puedas disfrutar</h2>
        </footer>

    </div>

    </form>

</body>
</html>
