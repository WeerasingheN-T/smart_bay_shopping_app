<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddSellerItem.aspx.cs" Inherits="E_Farming.AddSellerItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="col">
                        <a href="ViewSuppliedItemTable.aspx">
                            <input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button3" type="button" value="Seller Items" style="margin-right: 0; width: 173px; margin-left: 209px;" /><a href="SellerProfileView.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button322" type="button" value="Profile" style="margin-right: 0; width: 135px; margin-left: 14px;" /></a><a href="SoldItems.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button3333" type="button" value="Sold Items" style="width: 163px; margin-left: 11px" /></a><a href="AddSellerItem.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button344" type="button" value="Add Seller Item" style="width: 206px; margin-left: 9px; margin-right: 0" /></a><a href="SellerHome.aspx"><input class="btn btn-success btn-lg buttonA shadow col-1.5" id="Button311" type="button" value="Home" style="margin-right: 0; width: 130px; margin-left: 12px;" /></a></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
    </section>
    <br />
    <br />
    <br />
    <br />

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


                            <br />
                            <br />
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5><b>Add Seller Items</b></h5>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <center>
                                <img id="imgview" style="width: 355px; height: 193px" src="photos/item2.gif" /></center>
                            <br />

                            <p1>
                                <center><b>Fill the item details below</b></center>
                            </p1>

                            <asp:DropDownList class="form-control" ID="Catagories" runat="server" Required="True" Width="801px">
                                <asp:ListItem Text="- Select -" Value="- Select -"></asp:ListItem>
                                <asp:ListItem Text="Electronic" Value="Electronic" />
                                <asp:ListItem Text="Toys" Value="Toys" />
                                <asp:ListItem Text="Food" Value="Food" />
                                <asp:ListItem Text="Sports" Value="Sports" />
                                <asp:ListItem Text="Clothes" Value="Clothes" />
                            </asp:DropDownList>
                            <br />

                            <div class="row">
                                <div class="col-md-6">
                                    <label><b>Item Name :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox12" runat="server"
                                            placeholder="Enter the Item Name" Required="True"></asp:TextBox>

                                    </div>

                                </div>
                                <br>
                                <br>
                                <br>



                                <div class="col-md-6">
                                    <label><b>Item Code :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server"
                                            placeholder="Item Code" Required="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label><b>Unit Price :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox14" runat="server"
                                            placeholder="Unit Price in Rupee" Required="True"></asp:TextBox>

                                    </div>

                                </div>
                                <br>


                                <div class="col-md-6">
                                    <label><b>Weight or Quantity :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox13" runat="server"
                                            placeholder="Weight or Quentity" TextMode="Number" Required="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                              <div class="row">
                                <div class="col-md-6">
                                    <label><b>Size :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server"
                                            placeholder="Size" Required="True"></asp:TextBox>

                                    </div>

                                </div>
                                <br>


                                <div class="col-md-6">
                                    <label><b>Colour :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox3" runat="server"
                                            placeholder="Colour" Required="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <br>
                            <br>
                            <center>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg buttonA col-4" ID="Button10" runat="server" Text="Send Request" OnClick="Button10_Click" />
                                </div>
                            </center>
                            <br>
                        </div>
                    </div>


                    <br>



                    <a href="RequestItemSelect.aspx"><i><< Back to Home</i></a>
                </div>
            </div>
    </section>

</asp:Content>
