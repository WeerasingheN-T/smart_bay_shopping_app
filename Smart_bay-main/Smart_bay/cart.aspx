<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="E_Farming.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

      <br /><br />

    <div class="container">
      <div class="row">
        <div class="col-md-6 mx-auto">
         <div class="card">
          <div class="card-body">
            <div class="row">
               <div class="col">
                <center>
                  <h3>View Cart</h3>

                  <br />
               </center>
              </div>
           </div>
          <div class="row">
           <div class="col">
            <hr />
          </div>
         </div>

        <div class="row">
          <div class="col">

          <asp:GridView class="table table-striped table-bordered" ID="EGridView1" runat="server" ShowFooter="True" FooterStyle-BackColor="seaGreen" AutoGenerateColumns="False" DataKeyNames="ID" OnRowDataBound="EGridView1_RowDataBound" >
           <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="itemName" HeaderText="ItemName and Quantity" SortExpression="itemName" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:TemplateField>
              <ItemTemplate>
                <asp:CheckBox ID="chkDel" runat="server"/>
              </ItemTemplate>
            </asp:TemplateField>
           </Columns>
           <FooterStyle BackColor="SeaGreen"></FooterStyle>
         </asp:GridView>

        <br />

       <div class="form-group" align="center">
         <asp:Button class="btn btn-success" Text="Remove added Item" ID="remove" runat="server" OnClick="remove_Click" />
       </div>

       <br />
       <center>
         <asp:Label ID="Label1" runat="server" Text="Total Price : RS."></asp:Label>
         <asp:TextBox ID="txtTprice" runat="server" ReadOnly="true"></asp:TextBox>

         <br /><br /><br /><br />

       <div class="row">
         <div class="col">
           <asp:Button class="btn btn-primary" Text=" Order Now " Width="120px" ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" /><br />
         </div>

         <div class="col">
           <asp:Button class="btn btn-success " Text=" Add More " ID="Button1"  Width="120px" runat="server" OnClick="Button1_Click" /><br />
         </div>
         <div class="col">
           <asp:Button class="btn btn-danger " Text=" Cancel Order " ID="Button2"  Width="120px" runat="server" OnClick="Button2_Click" /><br />
         </div>
      </div>

     </center>
    </div>
  </div>
 <hr />

 <h1 align="center"><b>Place Order</b></h1>
 <br /><br /><br />
 <asp:Label Text="your order ID : " runat="server" />
 <asp:TextBox ID="TxtOrderId" runat="server"></asp:TextBox>
 <br />
 <asp:Label Text="Location" runat="server" />
 <br />

 <asp:TextBox class="form-control" ID="txtLocation" runat="server" TextMode="MultiLine" />
 <asp:Label Text="Item names and quantity: " runat="server" /><br />
 <asp:ListBox ID="ListBox1" runat="server"  DataTextField="itemName" DataValueField="itemName" Width="157px" DataSourceID="SqlDataSource1">
 </asp:ListBox>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" ProviderName="<%$ ConnectionStrings:con.ProviderName %>" SelectCommand="SELECT [itemName] FROM [cart_management]"></asp:SqlDataSource>
  <br />
 <asp:Label Text="Total Price : RS." runat="server" />
 <asp:TextBox class="form-control" ID="txtTotalPrice" runat="server" />

 <br/><br/>
 <center>
  <div class="form-group">
    <asp:Button class="btn btn-success" ID="btnOrder" runat="server"  Width="120px" Text="Submit" OnClick="btnOrder_Click" /><br/><br/>
  </div>
 </center>

</div>
</div>
</div>
</div>

 <div class="row">
  <div class="col-md-6">
    <a href="customerProfile.aspx" class="links"><img width="30" class="imgs" src="photos/back-arr.png "/>Back to Home</a>
  </div>
 </div>      
  <br /><br />

</asp:Content>
