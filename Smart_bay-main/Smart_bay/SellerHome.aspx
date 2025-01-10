<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SellerHome.aspx.cs" Inherits="E_Farming.SellerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .form-group {
            width: 429px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <br>
    <section><center>
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/farmer.png" width="80" height="80"/>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5><b>Hello Seller<br />View Profile & Request for Supplies</b></h5>
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
                                    <hr>
                                </div>
                            </div>
                             <table>
                              <tr>
                                <th><class="auto-style5"><p1><center>View Profile</center></p1><br></th>
                                <th><class="auto-style6"><p1><center>View Seller Items</center></p1></th>
                              </tr>
                              <tr>
                                <td class="auto-style3"><div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                    <div class="form-group">
                                        <center> <a href="SellerProfileView.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button244" type="button" value="Profile" style="width: 46%; margin-left: 16px; margin-bottom: 0;" />
                                        </a></center> <br>
                                    </div>
                                </div>
                                </div>
                            </div>

                                </td>


                                  <td class="auto-style3"><div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                    <div class="form-group">
                                        <center> <a href="ViewSuppliedItemTable.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button245" type="button" value="Seller Items" style="width: 46%; margin-left: 16px; margin-bottom: 0;" />
                                        </a></center> <br>
                                    </div>
                                </div>
                                </div>
                            </div></td>
                              </tr>
                            </table>

                            <p1><center>Seller Home</center></p1>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                    <div class="form-group">
                                        <center style="width: 481px"><a href="SellerHome.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button246" type="button" value="Home" style="width: 46%; margin-left: 0px; margin-bottom: 0;" />
                                        </a></center><br>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </div>

                            <table>
                              <tr>
                                <th><class="auto-style5"><p1><center>Add Item</center></p1><br></th>
                                <th><class="auto-style6"><p1><center>Sold Items</center></p1></th>
                              </tr>
                              <tr>
                                <td class="auto-style3"><div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                    <div class="form-group">
                                       <center> <a href="AddSellerItem.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button247" type="button" value="Add Item" style="width: 46%; margin-left: 16px; margin-bottom: 0;" />
                                        </a></center><br>
                                    </div>
                                </div>
                                </div>
                            </div>

                                </td>


                                  <td class="auto-style3"><div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                    <div class="form-group">
                                        <center> <a href="SoldItems.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button248" type="button" value="Sold Items" style="width: 46%; margin-left: 16px; margin-bottom: 0;" />
                                        </a></center> <br>
                                    </div>
                                </div>
                                </div>
                            </div></td>
                              </tr>
                            </table>

                            
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                      </div>
                   </div>

                   <br>

                   <a href="FarmHome.aspx"><i> << Back to Home</i></a>

               </div>
            </div>
      
        </center>
    </section><br>

    
    <br><br><br>

</asp:Content>
