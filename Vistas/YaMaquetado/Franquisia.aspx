<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Home.Master" AutoEventWireup="true" CodeBehind="Franquisia.aspx.cs" Inherits="Vistas.YaMaquetado.Franquisia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h2>Nuestras sucursales:</h2>
            <p>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Franquicias]"></asp:SqlDataSource>
            </p>
     </div>
</asp:Content>
