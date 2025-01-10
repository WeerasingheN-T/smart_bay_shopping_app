<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegForm.aspx.cs" Inherits="E_Farming.WebForm38" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                        <img src="photos/ish/ish_login.png" width="80" height="80" />
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5><b>User Registration</b></h5>
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
                                    <label>
                                        <b>User Type :<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderColor="Red" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="User Type is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </b>
                                    </label>
                                    &nbsp;<asp:DropDownList class="form-control shadow" ID="DropDownList2" runat="server" required="true">
                                        <asp:ListItem Text="- Select -" Value="- Select -" />
                                        <asp:ListItem Text="Seller" Value="Seller" />
                                        <asp:ListItem Text="Customer" Value="Customer" />
                                    </asp:DropDownList>
                                </div>

                                <div class="col-md-6">
                                    <label><b>Date of Birth :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server"
                                            TextMode="Date">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>First Name :</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" BorderColor="Red" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="First Name is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server"
                                            placeholder="User first Name" Required="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>Last Name :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox12" runat="server"
                                            placeholder="User Last Name" Required="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>
                                        <b>Contact Number :<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BorderColor="Red" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Contact Number  is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </b>
                                    </label>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox3" runat="server"
                                            placeholder="Mobile Number" TextMode="Number">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>
                                        <b>E-mail Address :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="E-mail is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </b>
                                    </label>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox4" runat="server"
                                            placeholder="e-mail" TextMode="Email" ValidationGroup="TextBox4"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label><b>NIC No :</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderColor="Red" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="NIC No is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox5" runat="server"
                                            placeholder="NIC Card Number" TextMode="Number" Required="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>Country :</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BorderColor="Red" ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="Country is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    &nbsp;<asp:DropDownList class="form-control shadow" ID="DropDownList3" runat="server" required="true">
                                        <asp:ListItem Text="- Select -" Value="- Select -" />
                                        <asp:ListItem Text="Sri Lanka" Value="Sri Lanka" />
                                        <asp:ListItem Text="India" Value="India" />
                                        <asp:ListItem Text="Pakistan" Value="Pakistan" />
                                        <asp:ListItem Text="Nepal" Value="Nepal" />
                                        <asp:ListItem Text="Bangladesh" Value="Bangladesh" />
                                        <asp:ListItem Text="Malayasiya" Value="Malayasiya" />
                                        <asp:ListItem Text="Bhutan" Value="Bhutan" />
                                        <asp:ListItem Text="Australia" Value="Australia" />
                                    </asp:DropDownList>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>
                                        <b>Poastal code :<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BorderColor="Red" ControlToValidate="TextBox13" Display="Dynamic" ErrorMessage="Poastal code is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </b>
                                    </label>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox13" runat="server"
                                            placeholder="Poastal code">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>City :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox8" runat="server"
                                            placeholder="City">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><b>Address :</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BorderColor="Red" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Address is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox9" runat="server"
                                            placeholder="Permanent Address">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>


                        <!-- <div class="col-md-6">
                                   <label><b>Farmer ID :</b></label>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg buttonA col-6" ID="btnGen" runat="server" Text="Generate ID" OnClick="btnGen_Click"></asp:Button><br>
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox6" runat="server"
                                            placeholder="Farmer ID">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div><br><br> -->
                        <div class="row">
                            <div class="col-md-6">
                                <label>
                                    <b>User Name :<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BorderColor="Red" ControlToValidate="TextBox16" Display="Dynamic" ErrorMessage="User Name is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </b>
                                </label>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox CssClass="form-control shadow" ID="TextBox16" Required="True" runat="server"
                                        placeholder="User Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Password :</b></label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" BorderColor="Red" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox CssClass="form-control shadow" ID="TextBox10" Required="True" runat="server"
                                        placeholder="Enter a Strong Password with letters+symbols" TextMode="Password">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label><b>Confirm Password :</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control shadow" ID="TextBox11" Required="True" runat="server"
                                        placeholder="Confirm Password by Re Entering" TextMode="Password">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br>
                        <center>
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg buttonA col-6" ID="Button1" runat="server" Text="Save and Create an Account" OnClick="Button1_Click" />
                            </div>
                        </center>

                    </div>
                </div>

                <br>
                <a href="FarmHome.aspx"><i><< Back to Home</i></a>

            </div>
        </div>
        </div>
    </section>
    <br>
    <br>
</asp:Content>
