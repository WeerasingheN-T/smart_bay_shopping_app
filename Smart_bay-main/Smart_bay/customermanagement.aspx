<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="customermanagement.aspx.cs" Inherits="E_Farming.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br><br>
	<div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Customer profile</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
							 <img  width="200px"src="photos/customer.png" />

                           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Customer ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Customer ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"  Width="16px" OnClick="LinkButton4_Click"  ><i class="fas fa-check-circle"></i></asp:LinkButton><br>
                           </div>
                        </div>
                     </div><br><br><br />
                     <div class="col-md-12">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox><br>
                        </div>
                     </div>
                    

                     <div class="col-md-12">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox><br>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox><br>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>CustomerNo</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="CustomerNo" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Full Postal Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox><br>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-10 mx-auto">
                       <center><asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
                       </center>
                     </div>
                  </div>
               </div>
            </div>
            
            <br>
         </div>
         <div class="col-md-7">
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

                  <div class="row print-container">
                     <div class="col">
                        <center>
                           <h4>Customers List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>   
                    
                   <div class = "row">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [full_name], [contact_no], [email], [state], [city], [customerNo], [full_address], [customer_id] FROM [Customer_Table_1]"></asp:SqlDataSource>
                     

                       <div class="col">
                           <asp:GridView class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
							   <Columns>
								   <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
								   <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
								   <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
								   <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
								   <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
								   <asp:BoundField DataField="customerNo" HeaderText="customerNo" SortExpression="customerNo" />
								   <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
								   <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
							   </Columns>
						   </asp:GridView>
                        <br /><br />
                            <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-6 buttonA" onclick="window.print();">Click here to print all customers</button>
                                </center>
                            </section>
                            <br>
                     </div>
                  </div>

               </div>
            </div>
         </div>
       </div>
     </div>
     <a href="AdminManagement.aspx"><i> << Go to Home </i></a>
   <br>
		

</asp:Content>
