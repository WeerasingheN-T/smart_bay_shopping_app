<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="E_Farming.Reviews" %>
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

     <div class="images4">
      <div class="row g-0">
    <div class="col-md-4">
      <asp:Image style="width: 400px; height: 450px" ID="Image1" runat="server"/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h2 style="color:blue; font-size:50px; font-family:Times, serif ;"><asp:TextBox ID="TextBox5" class="texboxes" runat="server" ReadOnly="true"></asp:TextBox></h2>

        <br/><br/>
        
        <div class="row-md-8">
         <h4 style="font-size:24px; font-family:Times, serif ;">Product Details</h4>

        <br/>
        
        <div class="row-md-8">
        <td><h6>Brand: No Brand</h6></td> 
        <td><p>Type of Cloth:Women's Dresses</p></td>
        <td><p>Clothing ID: <asp:TextBox ID="TextBox1" class="subTexboxes" runat="server" ReadOnly="true"></asp:TextBox></p></td>
        <td><p>Clothing Material: Silk</p></td>
        </div> 
      </div>
    </div>
    </div>
   </div>
  </div>
   
  <div class="images7">
   <div class="row g-0">
    <div class="col-md-8">
      <div class="card-body">
       
        <div class="images6">
          <h4 style="font-size:18px; font-family:Times, serif ;">How was your experience with the product?</h4>
        <div class="col-md-6">
          <asp:Button width="68px" height="30" style="font-size:14px" class="btn btn-warning" ID="Button5" OnClick="Button5_Click" runat="server" Text="GOOD"/>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<asp:Button width="60px" height="30" style="font-size:14px" ID="Button2" OnClick="Button2_Click" class="btn btn-warning" runat="server" Text="BAD"/><br />
          <img width="80" src="photos/goodE.png " />&emsp;&emsp;&emsp;&emsp;<img width="100"  src="photos/sadE.png " /><br />
          <center><asp:TextBox ID="TextBox3" style="width:80px;border:solid;border-color:transparent;background-color:transparent" runat="server" ReadOnly="true"></asp:TextBox></center><br />
        </div>
       </div> 
      </div>
    </div>
    <div class="col-md-4">
     <div class="card-body">
       <div>
          <h4 style="font-size:18px; font-family:Times, serif ;">Write your review here....</h4>
          <div class="form-group">
            <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Type maximum 50 charactors...." TextMode="MultiLine" Rows="6"></asp:TextBox>

            <br/>
            <center>
              <td><asp:Button class="btn btn-warning" style="color:white; border-radius:20px;padding:8px" width="100" ID="Button3" OnClick="Button3_Click" runat="server" Text="Reset" /></td>
              <td><asp:Button class="btn" style="background-color:#004b66;color:white; border-radius:20px;padding:8px" width="100" ID="Button1" OnClick="Button1_Click" runat="server" Text="Submit" /></td>
            </center>
          </div>
       </div> 
      </div>
    </div>
    </div>
   </div>
   <div class="row">
    <div class="col-md-6">
      <a href="Clothing.aspx" class="links"><img width="30" class="imgs" src="photos/back-arr.png "/>Back to View Clothing Products</a>
    </div>
   </div>
  <br /><br />

</asp:Content>
