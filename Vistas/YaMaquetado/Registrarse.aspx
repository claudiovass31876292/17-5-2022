<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Home.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Vistas.YaMaquetado.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Registre su cuenta aqui</h1>
        <div class="form"><asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Nombre" type="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Complete su nombre"></asp:RequiredFieldValidator></div>
        <div class="form"><asp:TextBox ID="txtApellido" runat="server" class="form-control" placeholder="Apellido" type="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Complete su apellido"></asp:RequiredFieldValidator></div>
        <div class="form">
            <br />
            <asp:DropDownList ID="ddlGenero" runat="server" Height="50px" Width="960px">
                <asp:ListItem>-Ingrese su genero-</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
            </asp:DropDownList>
            <br />
         <asp:RequiredFieldValidator ErrorMessage="Ingrese su genero" ControlToValidate="ddlGenero"  InitialValue="-Ingrese su genero-" runat="server"  /></div>    
            <br />
            <div class="form"><asp:TextBox ID="txtAlias" runat="server" class="form-control" placeholder="Alias" type="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAlias" ErrorMessage="Complete su alias"></asp:RequiredFieldValidator></div>
        <div class="form"><asp:TextBox ID="txtDni" runat="server" class="form-control" placeholder="Documento" type="number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDni" ErrorMessage="Complete su dni"></asp:RequiredFieldValidator></div>
        <div class="form"><asp:TextBox ID="txtCorreo" runat="server" class="form-control" placeholder="mail@mail.com" type="email"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Complete su correo"></asp:RequiredFieldValidator></div>
        <div class="form"><asp:TextBox ID="txtDireccion" runat="server" class="form-control" placeholder="Direccion 123" type="text"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Complete su direccion"></asp:RequiredFieldValidator></div>
        <div class="form"><asp:TextBox ID="txtContraseña" runat="server" class="form-control" placeholder="Contraseña" type="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Complete su contraseña"></asp:RequiredFieldValidator></div>
        <div class="form"><asp:TextBox ID="txtRepContraseña" runat="server" class="form-control" placeholder="Repita contraseña" type="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Repita su contraseña"></asp:RequiredFieldValidator></div>
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrarse" class="w-100 btn btn-lg btn-primary mt-3" OnClick="btnRegistrar_Click" />
        
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
