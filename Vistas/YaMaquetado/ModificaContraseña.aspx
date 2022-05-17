<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Cuenta.Master" AutoEventWireup="true" CodeBehind="ModificaContraseña.aspx.cs" Inherits="Vistas.YaMaquetado.ModificaContraseña" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Modifique su contraseña</h1>
        <div class="form mb-1"><asp:TextBox ID="txtMail" runat="server" class="form-control" placeholder="Micorreo@mail.com" type="email"></asp:TextBox></div>
        <div class="form"><asp:TextBox ID="txtContrasenia" runat="server" class="form-control" placeholder="Contraseña actual" type="Password"></asp:TextBox></div>
        <div class="form"><asp:TextBox ID="txtConfirmar" runat="server" class="form-control" placeholder="Confirme Contraseña" type="Password"></asp:TextBox></div>

        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="w-100 btn btn-lg btn-primary mt-3" />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
