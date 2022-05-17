<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProductos.aspx.cs" Inherits="Vistas.YaMaquetado.AdminProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Editar Productos.</h1>
            <p class="h3 mb-3 fw-normal text-center">
                <asp:GridView ID="grdProdAdmin" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnRowDeleting="grdProdAdmin_RowDeleting" OnSelectedIndexChanging="grdProdAdmin_SelectedIndexChanging" OnSelectedIndexChanged="grdProdAdmin_SelectedIndexChanged" AutoGenerateEditButton="True" OnRowCancelingEdit="grdProdAdmin_RowCancelingEdit" OnRowEditing="grdProdAdmin_RowEditing" OnRowUpdating="grdProdAdmin_RowUpdating" AllowPaging="True" OnPageIndexChanging="grdProdAdmin_PageIndexChanging" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Codigo_Articulo">
                            <EditItemTemplate>
                                <asp:Label ID="lbl_eit_codart" runat="server" Text='<%# Bind("Cod_Art_Pro") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_CodigoArticulo" runat="server" Text='<%# Bind("Cod_Art_Pro") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio_Unitario">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Pu" runat="server" Text='<%# Bind("PU_Pro") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_PrecioUnitario" runat="server" Text='<%# Bind("PU_Pro") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stock">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Stock" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_Stock" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Categoria">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Categoria" runat="server" Text='<%# Bind("Categoria") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_Categoria" runat="server" Text='<%# Bind("Categoria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripcion">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="URL_Imagen">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_url" runat="server" Text='<%# Bind("url") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_URL" runat="server" Text='<%# Bind("Url") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <EditItemTemplate>
                                <asp:TextBox ID="txt_eit_Estado" runat="server" Text='<%# Bind("Estado") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_estado" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerSettings PageButtonCount="5" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </p>
            <p class="h3 mb-3 fw-normal text-center">
                Importante , en caso de querer dar de baja un producto de un catalogo
                Se debe cambiar su estado a "False" , "True" en caso de querer devolverlo al mismo.
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </p>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
