<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SoldItems.aspx.cs" Inherits="E_Farming.SoldItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <div class="container">
            <div class="row">
                <div class="col">
                        <a href="ViewSuppliedItemTable.aspx">
                            <input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button3" type="button" value="Seller Items" style="margin-right: 0; width: 173px; margin-left: 209px;" /><a href="SellerProfileView.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button322" type="button" value="Profile" style="margin-right: 0; width: 135px; margin-left: 14px;" /></a><a href="SoldItems.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button3333" type="button" value="Sold Items" style="width: 163px; margin-left: 11px" /></a><a href="AddSellerItem.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button344" type="button" value="Add Seller Item" style="width: 206px; margin-left: 9px; margin-right: 0" /></a><a href="SellerHome.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button311" type="button" value="Home" style="margin-right: 0; width: 130px; margin-left: 12px;" /></a></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
            </div>
        </div>
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

                            <asp:GridView class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">

                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="Item Code" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="category" HeaderText="Item Category" SortExpression="category" />
                                    <asp:BoundField DataField="item_name" HeaderText="Item Name" SortExpression="item_name" />
                                    <asp:BoundField DataField="weight_quantity" HeaderText="Weight/Quantity" SortExpression="weight_quantity" />
                                    <asp:BoundField DataField="unit_price" HeaderText="Unit Price" SortExpression="unit_price" />
                                    <asp:BoundField DataField="size" HeaderText="Unit Price" SortExpression="size" />
                                    <asp:BoundField DataField="colour" HeaderText="Unit Price" SortExpression="colour" />

                                </Columns>

                            </asp:GridView>
                            <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-4 buttonA" onclick="window.print();">Click here to print expired item list</button>
                                </center>
                            </section>
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
