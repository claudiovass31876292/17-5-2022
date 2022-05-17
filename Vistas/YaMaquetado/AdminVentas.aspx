<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminVentas.aspx.cs" Inherits="Vistas.YaMaquetado.AdminVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Presupuestos solicitados</h1>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="Conector_ventas" DataKeyNames="Num_Doc_Com">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                </td>
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel1" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No se han devuelto datos.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server">Num_Doc_Com</th>
                                                <th runat="server">Total</th>
                                                <th runat="server">Alias</th>
                                                <th runat="server">Fecha</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
            <asp:SqlDataSource ID="Conector_ventas" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Ventas]"></asp:SqlDataSource>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
