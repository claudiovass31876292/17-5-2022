<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Cuenta.Master" AutoEventWireup="true" CodeBehind="Presupuestos.aspx.cs" Inherits="Vistas.YaMaquetado.Presupuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Necesita un presupuesto?</h1>
        <div class="form mb-1"><asp:TextBox ID="txtAlias" runat="server" class="form-control" placeholder="Nombre de usuario" type="text"></asp:TextBox></div>
        <div class="form"><asp:TextBox ID="txtTelefono" runat="server" class="form-control" placeholder="Tel: 1111-2222" type="phone"></asp:TextBox></div>
        <div class="form"><asp:TextBox ID="txtLocalidad" runat="server" class="form-control" placeholder="Localidad" type="text"></asp:TextBox></div>
        <div class="form"><asp:TextBox ID="txtMail" runat="server" class="form-control" placeholder="Email@mail.com" type="email"></asp:TextBox></div>
        <div class="form"><asp:DropDownList ID="ddlNose" runat="server" class="form-select"></asp:DropDownList></div>
        <div class="form"><asp:TextBox ID="txtConsulta" runat="server" class="form-control" placeholder="Consulta?" type="text"></asp:TextBox></div>

        <asp:Button ID="btnIngresar" runat="server" Text="Enviar consulta" class="w-100 btn btn-lg btn-primary mt-3" />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
