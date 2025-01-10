<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usermanagement.aspx.cs" Inherits="E_Farming.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
		$(document).ready(function () {
			$(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
		});
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br><br><br><br>
	<div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>User Login Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
							<img  width="200px" src="photos/signincategory.png" />
							

                           
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
                        <label>User ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID"  ></asp:TextBox><br>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton><br><br><br>
                           </div>
                        </div>
                     </div><br ><br><br><br><br>
                     
                     <div class="col-md-12">
                        <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox><br>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <label>Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Type" ReadOnly="True"></asp:TextBox><br><br>
                        </div>
                     </div>
              
                
                     <div class="col-12 mx-auto">
                       <center> <asp:Button ID="Button9" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" OnClick="Button9_Click" />
                     </center></div><br />
                  </div>
               </div>
            </div>
           
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>User List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [user_id], [name], [type] FROM [Userdetails_Table_2]"></asp:SqlDataSource>
                     

                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
							<Columns>
								<asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
								<asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
								<asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
							</Columns>
						 </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div> <a href="AdminManagement.aspx"><i> << Go to Home </i></a><br><br><br><br><br><br><br>
</asp:Content>
