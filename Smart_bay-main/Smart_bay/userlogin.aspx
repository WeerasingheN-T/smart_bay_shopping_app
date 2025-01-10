

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Smart_bay.userlogin" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">

                    <div class="card bg-transparent" >
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/ish/ish_login.png" width="80" height="80"/>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5><b>User Login</b></h5>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">

                                    <label><b>Username :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server"
                                            placeholder="Username">
                                        </asp:TextBox>
                                    </div>

                                    <label><b>Password :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server"
                                            placeholder="Password" TextMode="Password">
                                        </asp:TextBox>
                                    </div>
                                    <br />
                                     <div class="form-group">
                                           &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
                                        <asp:Button class="btn btn-success btn-block btn-lg" allign=center ID="Button4" runat="server" Text="Sign in" OnClick="Button4_Click" />
                                    </div>

                                    <div class="form-group">
                                        
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <br>
                    <a href="SmartHome.aspx"><i> << Back to Home</i></a>

                </div>
            </div>
        </div>
    </section><br><br><br><br><br>

</asp:Content>
