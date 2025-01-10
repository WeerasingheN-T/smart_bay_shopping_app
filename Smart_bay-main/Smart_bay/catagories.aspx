<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catagories.aspx.cs" Inherits="E_Farming.WebForm10" %>
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
                        <a href="cart.aspx" class="nav-link1">
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

     <div class="row">
       <div class="container2">
          <img width="1500" height="500"  src="photos/clientHome.PNG " />
       </div>
      </div>
    <br /><br /><br /><br />

  <div class="container3">

    <div>
        <h4>Shop Product Range</h4>
    </div>  

  <div class="card-group m-2">
  <div class="card item1">
   <img src="photos/clothing.PNG "/>
    <div class="card-body">
      <center><i class="bi bi-gift-fill"></i>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-gift-fill" viewBox="0 0 16 16">
             <path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zm6 4v7.5a1.5 1.5 0 0 1-1.5 1.5H9V7h6zM2.5 16A1.5 1.5 0 0 1 1 14.5V7h6v9H2.5z"/>
          </svg>
         <a href="Clothing.aspx" class="btn btn-info">Shop Clothing</a></center>
    </div>
  </div>
    <div class="card feed">
    <img src="photos/shoes.png "/>
    <div class="card-body">
      <center><i class="bi bi-handbag-fill"></i>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-handbag-fill" viewBox="0 0 16 16">
            <path d="M8 1a2 2 0 0 0-2 2v2H5V3a3 3 0 1 1 6 0v2h-1V3a2 2 0 0 0-2-2zM5 5H3.36a1.5 1.5 0 0 0-1.483 1.277L.85 13.13A2.5 2.5 0 0 0 3.322 16h9.355a2.5 2.5 0 0 0 2.473-2.87l-1.028-6.853A1.5 1.5 0 0 0 12.64 5H11v1.5a.5.5 0 0 1-1 0V5H6v1.5a.5.5 0 0 1-1 0V5z"/>
          </svg>
        <a href="#" class="btn btn-info">Shop Shoes & Bags</a></center>
    </div>
   </div>
    <div class="card feed">
    <img src="photos/beau.png"/>
    <div class="card-body">
      <center><i class="bi bi-people-fill"></i>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
             <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
             <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
             <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
          </svg>
        <a href="#" class="btn btn-info">Shop Beauty & Personal Care</a></center>
    </div>
   </div>
  <div class="card feed">
    <img src="photos/electronic.PNG"/>
    <div class="card-body">
      <center><i class="bi bi-plug-fill"></i>
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-plug-fill" viewBox="0 0 16 16">
             <path d="M6 0a.5.5 0 0 1 .5.5V3h3V.5a.5.5 0 0 1 1 0V3h1a.5.5 0 0 1 .5.5v3A3.5 3.5 0 0 1 8.5 10c-.002.434-.01.845-.04 1.22-.041.514-.126 1.003-.317 1.424a2.083 2.083 0 0 1-.97 1.028C6.725 13.9 6.169 14 5.5 14c-.998 0-1.61.33-1.974.718A1.922 1.922 0 0 0 3 16H2c0-.616.232-1.367.797-1.968C3.374 13.42 4.261 13 5.5 13c.581 0 .962-.088 1.218-.219.241-.123.4-.3.514-.55.121-.266.193-.621.23-1.09.027-.34.035-.718.037-1.141A3.5 3.5 0 0 1 4 6.5v-3a.5.5 0 0 1 .5-.5h1V.5A.5.5 0 0 1 6 0z"/>
          </svg>
        <a href="#" class="btn btn-info">Shop Electronic Accessories</a></center>
    </div>
   </div>
  </div>

 </div>
    <br />

     <div class="row">
        <div class="col-md-6">
           <a href="ClientHome.aspx" class="links"><img width="30" class="imgs" src="photos/back-arr.png "/>Back to Home</a>
        </div>
     </div>  

    <br /><br />

</asp:Content>
