<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminProfile.aspx.cs" Inherits="Smart_bay.adminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      
     <!--<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
        </nav> -->
		 <div class="container">
      <div class="row">
         <div class="col-md-9 mx-auto">
           
                 <center>
			        <img width="200px"  src="photos/customer.png " />

                     </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                          
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <label>Email </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email " TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
             <div class="row">
                     <div class="col-md-12">
                        <label>User Role</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="role" Rows="2" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login detials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Customer ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="You must enter old password or else you should update password" Required="True" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div><br>
                  <div class="row">
                      <div class="col-md-12">
                          <center>
                          <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Width="300px" Text="Update" OnClick="Button1_Click" />
                           </div>
                          </center>
                      </div>

                  </div><br />
                  

                  </div>

          
                   
                       <a href="homepage aspx.aspx"><< Back to Home</a>
                        
                         

                        <br><br><br>
                        
                       
                    
                  
            

</asp:Content>


