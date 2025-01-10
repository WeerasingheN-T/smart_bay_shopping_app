<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewSuppliedItemTable.aspx.cs" Inherits="E_Farming.ViewSuppliedItemTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>$(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        }); </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <asp:LinkButton class="nav-link" ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Hello user</asp:LinkButton>

                </li>



                <li class="nav-item active">
                    <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                </li>

            </ul>
        </div>
    </nav>

    <section>
        <div class="container">
            <div class="row">
                <div class="col">
                    <a href="ViewSuppliedItemTable.aspx">
                        <input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button3" type="button" value="Seller Items" style="margin-right: 0; width: 173px; margin-left: 209px;" /><a href="SellerProfileView.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button322" type="button" value="Profile" style="margin-right: 0; width: 135px; margin-left: 14px;" /></a><a href="SoldItems.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button3333" type="button" value="Sold Items" style="width: 163px; margin-left: 11px" /></a><a href="AddSellerItem.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button344" type="button" value="Add Seller Item" style="width: 206px; margin-left: 9px; margin-right: 0" /></a><a href="SellerHome.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button311" type="button" value="Home" style="margin-right: 0; width: 130px; margin-left: 12px;" /></a></a>&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </div>


    </section>
    <br />
    <br />


    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto">

                    <div class="card">
                        <div class="card-body">
                            <style>
                                @media print {
                                    body * {
                                        visibility: hidden;
                                    }

                                    .print-container, .print-container * {
                                        visibility: visible;
                                    }
                                }
                            </style>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/farmer.png" width="80" height="80" />
                                    </center>
                                </div>
                            </div>

                            <div class="row print-container">
                                <div class="col">
                                    <center>
                                        <h5><b>Supplied Item Table</b></h5>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <br>



                            <asp:GridView class="table table-striped table-bordered" ID="GridView112" runat="server" AutoGenerateColumns="false" DataKeyNames="id" CellPadding="4" ForeColor="#333333"
                                GridLines="None" OnRowEditing="GridView112_RowEditing" OnRowCancelingEdit="GridView112_RowCancelingEdit"
                                OnRowUpdating="GridView112_RowUpdating" OnRowDeleting="GridView112_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                                <Columns>



                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("id") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtid" Text='<%# Eval("id") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("category") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtcategory" Text='<%# Eval("category") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Item Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("item_name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtitem_name" Text='<%# Eval("item_name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Weight">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("weight_quantity") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtweight_quantity" Text='<%# Eval("weight_quantity") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Unit Price">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("unit_price") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtunit_price" Text='<%# Eval("unit_price") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Colour">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("colour") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtcolour" Text='<%# Eval("colour") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Size">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("size") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtsize" Text='<%# Eval("size") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton ImageUrl="~/photos/Education_Edit_pencil_1-copy-6.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                            <asp:ImageButton ImageUrl="~/photos/download.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:ImageButton ImageUrl="~/photos/saved-icon-29.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                            <asp:ImageButton ImageUrl="~/photos/cancel-icon-png-12.jpg" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />

                                        </EditItemTemplate>

                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>



                            <br>
                        </div>
                    </div>

                    <br>
                    <a href="RequestItemSelect.aspx"><i><< Back to Home</i></a>

                </div>
            </div>
        </div>
    </section>
    <br>
</asp:Content>


