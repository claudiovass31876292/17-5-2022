<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Cuenta.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vistas.YaMaquetado.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Bienvenido a Carrito.aspx
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
    </h2>
</asp:Content>
