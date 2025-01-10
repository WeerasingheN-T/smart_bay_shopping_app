<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clothing.aspx.cs" Inherits="E_Farming.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });

         

       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
 
   <!-- Navbar -->
       <nav class="navbar navbar-expand-lg navbar1">
          <!-- Container wrapper -->
         <div class="container-fluid">
           <!-- Toggle button -->
              <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <i class="fas fa-bars"></i>
              </button>

             <!-- Collapsible wrapper -->
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left links -->
                     <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link nav-link1" ID="LinkButton6" runat="server" Onclick="LinkButton1_Click" >Clothing</asp:LinkButton>

                        </li>
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link nav-link1" ID="LinkButton8" runat="server" Onclick="LinkButton2_Click" >Shoes & Bags</asp:LinkButton>

                        </li>
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link nav-link1" ID="LinkButton9" runat="server" Onclick="LinkButton4_Click" >Beauty & Personal Care</asp:LinkButton>

                        </li>
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link nav-link1" ID="LinkButton10" runat="server" Onclick="LinkButton5_Click" >Electronic Accessories</asp:LinkButton>

                        </li>
                    </ul>
                    <!-- Left links -->
                  </div>

                 <!-- Right elements -->
                   <div class="d-flex align-items-center">
                  
                <ul class="navbar-nav mr-auto">
                   <li class="nav-item active">
                            <asp:LinkButton class="nav-link nav-link1" ID="LinkButton7" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link nav-link1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>
                   
                    </ul>		      
           
                    <!-- Icon -->
                        <a href="cart aspx.aspx" class="nav-link1">
                        <i class="bi bi-cart4"></i>
                            <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                              <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                            </svg>
                        </a>

                 <!-- Notifications -->
                   <a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink" role="button" aria-expanded="false" >
                     <i class="bi bi-bell"></i>
                       <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                         <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                       </svg>
                     </a>
           </div>
          </div>
         </nav>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Add Cart</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img style="width: 300px; height: 280px"  src="photos/Shcart.PNG" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Item Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtIname" runat="server" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>
                           

                            <div class="col-md-5">
                                <label>Quentity</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtQuentity" runat="server"></asp:TextBox>

                                </div>
                            </div>
                             <div class="col-md-3">
                                <label>Price</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPrice" runat="server" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div><br /><br /><br /><br /><hr />
                            <asp:Button ID="Button3" formnovalidate="True" class="btn btn-success" runat="server" Text="Calculate total" OnClick="Button3_Click" /><br />
                            <div class="col-md-3">
                                <label>Total</label>&nbsp;<div class="form-group">
                                    <asp:TextBox CssClass="form-control" requiered="true" ID="txtTotal" Width="100px" runat="server" ></asp:TextBox>

                                </div>
                            </div>

                        </div>
                        <br /><hr /><br />
                        
                                <center>
                                    <asp:Button ID="Button2" class="btn btn-primary col-4" width="150" runat="server"  Text="Add" OnClick="Button2_Click" /><br /><br />
                                <asp:Button ID="Button1" formnovalidate="True" class="btn btn-warning col-4" runat="server" Text="View Cart" OnClick="Button1_Click"  /><br /><br />
                                     <asp:Button ID="btncat" formnovalidate="True" class="btn btn-warning col-4" runat="server" Text="View catagory" OnClick="btncat_Click" /><br /><br /><br /><br /><br /><br /><br /><br />
                                </center>
                                
                <br>
                            </div>
                          
                </div>

                
            </div>

            <div class="col-md-8">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Clothings</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [code],[itemName], [price], [img_link] FROM [item_management]" ProviderName="<%$ ConnectionStrings:con.ProviderName %>">
                               </asp:SqlDataSource>
                              
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <hr />
                                 </div>
                            </div>

                       <div class="row">
                           <div class="col">
                               <asp:GridView class="table table-striped" ID="EGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="EGridView1_SelectedIndexChanged">
                                  <Columns>
                                       <asp:BoundField DataField="code" HeaderText="ItemCode" InsertVisible="False" ReadOnly="True" SortExpression="code" />
                                       <asp:BoundField DataField="itemName" HeaderText="ItemName" InsertVisible="False" ReadOnly="True" SortExpression="itemName" />
                                       <asp:BoundField DataField="price" HeaderText="Price" InsertVisible="False" ReadOnly="True" SortExpression="price" />
                                      <asp:TemplateField>
                                           <ItemTemplate>
                                               <div class="container-fluid">
                                                   <div class="row">
                                                       <div class="col-lg-10">
   
                                                           
                                                        <div class="row">
                                                       <div class="col-lg-5">
                                                           <asp:Image Class="img-fluid" style="width: 1000px; height: 200px" ID="Image1" runat="server" ImageUrl='<%# Eval("img_link") %>' />
                                                    </div>
                                                  
                                                   <div class="col-lg-3">
                                                   <asp:Button class="btn btn-primary" width="100" ID="Button5" runat="server" OnClick="Button5_Click" Text="Add to Cart" />
                                                </div>
                                                <div class="col-lg-4">
                                                   <asp:Button class="btn btn-primary" width="120" ID="Button4" runat="server" OnClick="Button4_Click" Text="View product" />
                                                </div>
                                               </div>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                      
                                   </Columns>
                               </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>

     <div class="row">
       <div class="col-md-6">
         <a href="catagories.aspx" class="links"><img width="30" class="imgs" src="photos/back-arr.png "/>Back to Catagories</a>
       </div>
     </div>  

</asp:Content>

