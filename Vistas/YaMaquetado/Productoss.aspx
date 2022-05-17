<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Cuenta.Master" AutoEventWireup="true" CodeBehind="Productoss.aspx.cs" Inherits="Vistas.YaMaquetado.Productoss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Nuestros productos</h1>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF; color: #284775;">PU_Pro:
                        <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                        <br />Stock:
                        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                        <br />url:
                        <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                        <br />
                        Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />
                        <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" Text="Estado" />
                        <br />
                        Categoria:
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #999999;">PU_Pro:
                        <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                        <br />Stock:
                        <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                        <br />url:
                        <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                        <br />Descripcion:
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        <br />
                        <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Bind("Estado") %>' Text="Estado" />
                        <br />
                        Categoria:
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No se han devuelto datos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">PU_Pro:
                        <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                        <br />Stock:
                        <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                        <br />url:
                        <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                        <br />Descripcion:
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        <br />
                        <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Bind("Estado") %>' Text="Estado" />
                        <br />
                        Categoria:
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF; color: #333333;">PU_Pro:
                        <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                        <br />Stock:
                        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                        <br />url:
                        <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                        <br />
                        Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />
                        <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" Text="Estado" />
                        <br />
                        Categoria:
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
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
                    <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">PU_Pro:
                        <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                        <br />Stock:
                        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                        <br />url:
                        <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                        <br />Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />
                        <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" Text="Estado" />
                        <br />
                        Categoria:
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT [PU_Pro], [Stock], [url], [Descripcion], [Estado], [Categoria] FROM [Productos] WHERE ([Estado] = @Estado)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="True" Name="Estado" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT [PU_Pro], [Stock], [Descripcion], [Categoria], [url] FROM [Productos] WHERE ([Descripcion] LIKE '%' + @Descripcion + '%')" OnSelecting="SqlDataSource1_Selecting1">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtProductos" Name="Descripcion" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="hpProductos2" runat="server" NavigateUrl="~/Productos2.aspx">Ir a Productos 2</asp:HyperLink>
            <br />
            <br />

             <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="4" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF; color: #284775;">Stock:
                        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                        <br />PU_Pro:
                        <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                        <br />Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />
                        Categoria:
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("url") %>' Width="150px" />
                        <br />
                        <asp:Button ID="btn_comprar" runat="server" Text="Comprar" />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #999999;">Stock:
                        <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                        <br />PU_Pro:
                        <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                        <br />Descripcion:
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        <br />url:
                        <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                        <br />Categoria:
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No se han devuelto datos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">Stock:
                        <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                        <br />PU_Pro:
                        <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                        <br />Descripcion:
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        <br />url:
                        <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                        <br />Categoria:
                        <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF; color: #333333;">Stock:
                        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                        <br />PU_Pro:
                        <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                        <br />Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />
                        Categoria:
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("url") %>' Width="150px" />
                        <br />
                        <asp:Button ID="btn_comprar" runat="server" Text="Comprar" />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
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
                    <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">Stock:
                        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                        <br />PU_Pro:
                        <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                        <br />Descripcion:
                        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        <br />url:
                        <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                        <br />Categoria:
                        <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>

            Buscar productos :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtProductos" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnBuscar" runat="server" OnClick="Button5_Click" Text="Buscar" Width="174px" />
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
