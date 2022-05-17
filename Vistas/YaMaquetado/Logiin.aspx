<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Home.Master" AutoEventWireup="true" CodeBehind="Logiin.aspx.cs" Inherits="Vistas.YaMaquetado.Cuentaa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="auto-style1"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Ingrese su cuenta aqui</h1>
        <div class="form mb-1"><asp:TextBox ID="txtAlias" runat="server" class="form-control" placeholder="Nombre de usuario" type="text"></asp:TextBox></div>
        <div class="form"><asp:TextBox ID="txtContrasenia" runat="server" class="form-control" placeholder="Contraseña" type="Password" OnTextChanged="txtContrasenia_TextChanged"></asp:TextBox></div>

        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="w-100 btn btn-lg btn-primary mt-3" OnClick="btnIngresar_Click" />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <a class="w-100 btn btn-lg btn-primary mt-3" href="Registrarse.aspx">Registrate</a>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
