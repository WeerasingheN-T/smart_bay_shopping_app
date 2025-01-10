<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SellerProfileView.aspx.cs" Inherits="E_Farming.SellerProfileView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 110px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
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


    </section>
    <br>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/farmer.png" width="80" height="80" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5><b>Update Profile</b></h5>
                                        <span>Account Status - </span>
                                        <asp:Label class="badge rounded-pill bg-success text-white" ID="Label1" runat="server" Text="Active"></asp:Label>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label class="auto-style1"><b>Full Name :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox224" runat="server"
                                            placeholder="Full Name" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>Date of Birth :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox225" runat="server"
                                            TextMode="Date" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label><b>Contact Number :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox226" runat="server"
                                            placeholder="Mobile Number" ReadOnly="True" TextMode="Number" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>E-mail Address :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox227" runat="server"
                                            placeholder="e-mail" ReadOnly="True" TextMode="Email" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label><b>NIC No :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox228" runat="server"
                                            placeholder="NIC Card Number" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <label><b>Province :</b></label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control shadow" ID="DropDownList22" ReadOnly="True" runat="server" style="margin-left: 0px">
                                            <asp:ListItem Text="-Select-" Value="-Select-"></asp:ListItem>
                                            <asp:ListItem Text="Southern Province" Value="Southern Province"></asp:ListItem>
                                            <asp:ListItem Text="Western Province" Value="Western Province"></asp:ListItem>
                                            <asp:ListItem Text="Central Province" Value="Central Province"></asp:ListItem>
                                            <asp:ListItem Text="Eastern Province" Value="Eastern Province"></asp:ListItem>
                                            <asp:ListItem Text="Northern Province" Value="Northern Province"></asp:ListItem>
                                            <asp:ListItem Text="Uva Province" Value="Uva Province"></asp:ListItem>
                                            <asp:ListItem Text="North Western Province" Value="North Western Province"></asp:ListItem>
                                            <asp:ListItem Text="North Central Province" Value="North Central Province"></asp:ListItem>
                                            <asp:ListItem Text="Sabaragamuwa Province" Value="Sabaragamuwa Province"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label><b>Country :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox229" runat="server"
                                            placeholder="City" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label><b>Postal Code :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox111" runat="server"
                                            placeholder="Postal Code" TextMode="Number" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><b>Address :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox231" runat="server"
                                            placeholder="Address" TextMode="MultiLine" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row">
                                <div class="col-md-4">
                                    <label><b>Seller ID :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox232" runat="server"
                                            placeholder="Farmer ID" ReadOnly="True" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label><b>Account Number :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox230" runat="server"
                                            placeholder="Account Number" ReadOnly="True" TextMode="Number" style="margin-left: 0px">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <section>
                                <div class="container">
                                    <div class="row">
                                        <div class="col">
                                            <a href="SellerProfileUpdate.aspx">
                                                <input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button33" type="button" value="Update Profile" style="margin-right: 0; width: 214px; margin-left: 209px;" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
                                        </div>
                                    </div>
                                </div>


                            </section>

                        </div>

                        <br>
                        <a href="RequestItemSelect.aspx"><i><< Back to Home</i></a>

                    </div>
                </div>
            </div>
    </section>
    <br>
    <br>
    <br>
    <br>
</asp:Content>

