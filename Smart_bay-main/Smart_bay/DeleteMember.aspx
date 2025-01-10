<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteMember.aspx.cs" Inherits="E_Farming.WebForm43" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
            <div class="row">

                <div class="col-md-5">

                    <div class="card">
                        <div class="card-body">
                            <div class ="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/ish/ish_login.png" style="height: 117px; width: 117px; margin-top: 4px" />
                                    </center>
                                 
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3 >Delete User</h3>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                  <lable>User Name</lable>
                                    <div class="form-group">
                                        <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter Username">   </asp:TextBox>
                                            <asp:LinkButton type="button" class="btn btn-info"  ID="LinkButton3" runat="server" OnClick="LinkButton1_Click">Go</asp:LinkButton>
                                        
                                        </div>
                                      </div>  
                                 </div>
                                
                            </div>
                             <div class="row">
                                      <div class="col-md-6">
                                  <lable>DOB</lable>
                                    <div class="form-group">
                                        
                                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth"  ReadOnly="true"></asp:TextBox>
                                      </div>  
                                 </div>
                            <div class="col-md-6">
                               
                                  <lable>First Name</lable>
                                    <div class="form-group">
                                        
                                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="First Name"  ReadOnly="true"></asp:TextBox>
                                      </div>  
                                 </div>
                                
                                 
                                  </div>
                              <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                  <lable>Last Name</lable>
                                    <div class="form-group">
                                      
                                         <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Last Name"  ReadOnly="true"></asp:TextBox>
                                      </div>  


                                 </div>
                                <div class="col-md-6">
                                  <lable>Contact Number</lable>
                                    <div class="form-group">
                                      
                                         <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact Number"  ReadOnly="true"></asp:TextBox>
                                      </div>  


                                 </div>
                                 
                               
                                </div>
                           
                            <div class="row">
                                 <div class="col-md-6">
                                     <lable>NIC</lable>
                                    <div class="form-group">

                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="NIC" TextMode="Number" ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                            

                            
                                <div class="col-md-6">
                                  <lable>Country</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="email" TextMode="Email" ReadOnly="true">

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                                </div>
                            <div class="row">
                                 <div class="col-md-6">
                                     <lable>Poastal code</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Poastal code"  ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                          
                                 <div class="col-md-6">
                                     <lable>City</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="City"  ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                            
                              
                                </div>
                            <div class="row">
                                  <div class="col">
                                  <lable>Address</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="full address" TextMode="MultiLine" ReadOnly="true">

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                            
                           </div>
                           <div class="row">
                                <div class="col-md-6">
                                  <lable>Email</lable>
                                    <div class="form-group">
                                       
                                         <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="E mail" ReadOnly="true">
                                            

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                                <div class="col-md-6">
                                     <lable>Password</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="pwd" TextMode="Password" ReadOnly="true">
                                            

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                                
                            </div>
                            <br />
                          
                            <br />
                            
                                 <div class="row">
                                     <div class="col">
                                    <div class="form-group">
                                        <center>
                                        <asp:Button Class="btn btn-lg btn-block btn-danger" ID="Button3" Width="350px" runat="server"  Text="Delete Member Permanently" OnClick="Button3_Click" />
                                        </center><br />
                                    </div>
                                </div>
                              
                                </div>
                                        
                         </div>
                      
                        </div>
                       <br /><br />      
  
</div>

    <div class="col-md-7">
        <div class="card">
            <div class="card-body">

                <div class="row">
                    <div class="col">
                        <center>
                            <h3>Users List</h3>

                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <center>
                            <img src="photos/welcome%20member.jpg" />
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr />
                    </div>
                </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" ProviderName="<%$ ConnectionStrings:con.ProviderName %>" SelectCommand="SELECT [username], [user_fname], [user_lname], [email], [nic], [contactnumber] FROM [user_reg_form]"></asp:SqlDataSource>
                    
                    <div class="col">
                        <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" />
                                <asp:BoundField DataField="user_fname" HeaderText="First Name" SortExpression="user_fname" />
                                <asp:BoundField DataField="user_lname" HeaderText="Last Name" SortExpression="user_lname" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="nic" HeaderText="NIC" SortExpression="nic" />
                                <asp:BoundField DataField="contactnumber" HeaderText="Mobile No" SortExpression="contactnumber" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>

            </div>
</div>
 <br />
    <br />
    <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton ID="A" runat="server" OnClick="A_Click" >Profile Management</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="B" runat="server" OnClick="B_Click"  >Salary Calculation</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="C" runat="server" OnClick="C_Click"   >UpdateSalary Department</asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="D" runat="server" OnClick="D_Click"  >DepartmentSalary Management</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
            

        </footer>
</asp:Content>
