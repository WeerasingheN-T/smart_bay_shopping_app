<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addDelivery.aspx.cs" Inherits="E_Farming.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="asignVehicle.aspx">Asign Vehice</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="addDelivery.aspx">Add Delivery</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="viewDelivery.aspx">View All Deliveries</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <hr color="#00ff99"/><br /><br />
   
    <div class="container">
        <div class="row"> 
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridViewD" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
             <Columns>
            <asp:TemplateField HeaderText="Order ID">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Order_ID") %>' runat="server"></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Location") %>' runat="server"></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Date">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("OrderDate") %>' runat="server"></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
            </Columns>
        </asp:GridView>

                            </div></div></div></div></div>




            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="photos/adddel.jpg" class="img.fluid" width="50%" height="90%" />
                                    
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Add Delivery Details</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                              <hr />
                            </div>
                        </div>
                        </div><center>
                        <div class="row">
                            <div class="col">

                                
                      

                              <h5>Order</h5>
                                <div class="form.group">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Order number" BorderColor="#00ff99" CssClass="offset-sm-0" Width="228px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderStyle="Dotted" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Requiered</asp:RequiredFieldValidator>
                                </div><br />
                                
                                <h5>Location</h5>
                                <div class="form.group">
                                <asp:DropDownList ID="DropDownListG" BorderColor="#00ff99" runat="server" Width="216px">
                                <asp:ListItem Value="Matara">Matara</asp:ListItem>
                                <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
                                <asp:ListItem Value="Galle">Galle</asp:ListItem>
                                <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
                                <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
                                </asp:DropDownList>
                                    </div><br />
           
                      
            
                              <h5>Vehicle</h5>
                                <div class="form.group">
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Vehicle number" BorderColor="#00ff99" Width="205px"></asp:TextBox>
                                </div><br />

                           
                                
                              <h5>Date</h5>
                                <div class="form.group">
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Delivery Date" TextMode="Date" BorderColor="#00ff99" Width="201px"></asp:TextBox>
                                </div><br />
                           
                              
                              <h5>Order Status</h5>
                                <div class="form.group">
                                     <asp:DropDownList ID="DropDownList4" BorderColor="#00ff99" runat="server" Width="200px" Height="25px">
                                     <asp:ListItem Value="Delivered">Delivered</asp:ListItem>
                                     <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                     </asp:DropDownList>
                                    
                                </div><br /><br />
                                <center>
         <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Add Delivery" OnClick="Button1_Click" /></center>

                            </div>

                        </div>
                            
                              
                        <br />
                        </center>





                    </div>
                </div>
            </div>
        </div>
    <br />

</asp:Content>
