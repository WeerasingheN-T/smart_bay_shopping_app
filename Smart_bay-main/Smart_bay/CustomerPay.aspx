<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerPay.aspx.cs" Inherits="E_Farming.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                   <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton7" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>
                   
                    </ul>		      
            </div>
        </nav>
    <div class="container">
     <div class ="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="300px" src="photos/cardpay.jpg"/>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Payment</h3>
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
                        <label>Customer Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"  ControlToValidate="TextBox1" required="true"></asp:TextBox>
                        </div>
                     </div>
                       <br />
                     <div class="col-md-6">
                        <label>Contact Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  textmode ="Number" required="true" ></asp:TextBox>
                        </div>
                     </div>
                     </div>
                       <br />
                    <div class="row">
                     <div class="col-md-6">
                        <label>E-mail Address </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Email" required="true"></asp:TextBox>
                        </div> 
                     </div><br />
                   <div class="col-md-6">
                        <label>Card Type</label>
                        <div class="form-group">
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" required="true">  
                            <asp:ListItem>VISA</asp:ListItem>  
                            <asp:ListItem>Master Card</asp:ListItem>  
                           <%--<asp:ListItem Text='<img src="imgs/visa.png" alt="img1" width = "50px" />' Value="1" />--%>
                     </asp:RadioButtonList>
                        </div>
                     </div>

                         


                        </div>
                   
                   <br />
                          <div class="row">
                     <div class="col-md-6">
                        <label>Card Number </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" required="true"></asp:TextBox>
                        </div>
                     </div><br />
                     <div class="col-md-6">
                        <label>Expiration Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" textmode ="Date"  required="true"></asp:TextBox>
                        </div>
                     </div>
                               </div>
                   <br />
                              <div class="row">
                     <div class="col-md-6">
                              <label>CVC</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" textmode ="Number" required="true"></asp:TextBox>
                        </div>
                                  </div>




                  </div>
                          <br />    <div class="card">
                                  <div class="card-body"> 
                                       <div class="col-md-6">
                                         <label>SubTotal : </label>
                                           </div>
                                       <div class="col-md-6">
                                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                           </div>
                                  </div>
                               </div>
                   <div class="row">
                     <div class="col">
                        <hr>

                     </div>
                  </div>



                  
                     </div>
                   
                   

                      


                <br />


                         <div class="row">
                     <div class="col-6 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Width="473px" Text="Pay" OnClick="Button1_Click"/>
                           </div>
                        </center>
                     </div>
                  </div>
                   </div>
                              </div>
                     </div>
                  </div><br /><br />

</asp:Content>