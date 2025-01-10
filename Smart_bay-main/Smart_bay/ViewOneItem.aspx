<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewOneItem.aspx.cs" Inherits="E_Farming.WebForm19" %>
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
        <td><h5>RS.<asp:TextBox ID="TextBox1" class="subTexboxes" runat="server" ReadOnly="true"></asp:TextBox></h5><br /></td> 
        <td><h6>No of Items in Current Stock: <asp:TextBox ID="TextBox2" class="subTexboxes" runat="server" ReadOnly="true"></asp:TextBox></h6></td>
        </div>
       <div class="row-md-8 mt-4">
         <td><h6>Available Colors: <asp:TextBox ID="TextBox3" class="subTexboxes" runat="server" ReadOnly="true"></asp:TextBox> Quantity: <asp:TextBox type="number" style="width:80px;border:solid;border-color:aqua" ID="quantity" name="quantity" min="1" max="5" runat="server"></asp:TextBox></h6></td>
           <td>
               <div class="btn-group">
                  <button>Black</button>
                  <button>Blue</button>
                  <button>Red</button>
                  <button>White</button>
                  <button>Green</button>
                  <button>Yellow</button>
              </div>
           </td>
        </div>
        <div class="row-md-8 mt-4">
         <td><h6>Available Sizes: <asp:TextBox ID="TextBox4" class="subTexboxes" runat="server" ReadOnly="true"></asp:TextBox></h6></td>
         <td>
             <td>
               <div class="btn-group">
                  <button>Small</button>
                  <button>Large</button>
                  <button>Medium</button>
                  <button>XL</button>
                  <button>XXL</button>
                  <button>XXXL</button>
                  <button>IVXL</button>
              </div>
           </td>
         </td>
         </div>
         <div class="row-md-4 mt-5">
           <div style="margin-left:80px">
            <td><asp:Button class="btn" style="background-color:#004b66;color:white; border-radius:20px;padding:12px" width="200" ID="Button1" OnClick="Button1_Click" runat="server" Text="Buy Now" /></td>
            <td><asp:Button class="btn btn-warning" style="color:white; border-radius:20px;padding:12px" width="200" ID="Button2" OnClick="Button2_Click" runat="server" Text="Add to Cart" /></td>
           </div>
         </div>
      </div>
    </div>
    </div>
   </div>

  <div class="images5">
   <div class="row g-0">
    <div class="col-md-8">
      <div class="card-body">
        <h4 style="font-size:24px; font-family:Times, serif ;">Product Details</h4>

        <br/>
        
        <div class="row-md-8">
        <td><h6>Brand: No Brand</h6></td> 
        <td><p>Type of Cloth:Women's Dresses</p></td>
        <td><p>Clothing ID: <asp:TextBox ID="TextBox9" class="subTexboxes" runat="server" ReadOnly="true"></asp:TextBox></p></td>
        <td><p>Clothing Material: Silk</p></td>
         </div>
      </div>
    </div>
    </div>
   </div>

    <div class="images5">
   <div class="row g-0">
    <div class="col-md-8">
      <div class="card-body">
        <h4 style="font-size:24px; font-family:Times, serif ;">Product Reviews</h4>
          <div style="margin-left:800px;margin-top:-28px;width:200px">
           <asp:Button class="btn" style="background-color:#cce6ff;color:black; border-radius:20px;padding:4px" width="200" ID="Button3" OnClick="Button3_Click" runat="server" Text="Write a Review"/>
           <i class="bi bi-pencil-fill"></i>
           <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" style="margin-top:-60px;margin-left:160px" class="bi bi-pencil-fill" viewBox="0 0 16 16">
            <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
           </svg>
        </div>
        
        <div class="scroll">
          <div class="row-md-8"> 
            <left><asp:TextBox ID="TextBox6" style="width:auto;border:solid;border-color:transparent;background-color:transparent;margin-left:-920px;font-size:14px" runat="server" ReadOnly="true"></asp:TextBox></left>
            <asp:TextBox class="form-control" style="width:auto;border:solid;border-color:transparent;background-color:transparent" ID="TextBox7" runat="server" placeholder="Write your review...." TextMode="MultiLine" Rows="2"></asp:TextBox>
            <br />
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
