<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewDelivery.aspx.cs" Inherits="E_Farming.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type ="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         }); </script>
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
    <hr /><center>
     <img src="photos/deliver_1_1.png" /></center>
    <div class="container">
<div class="row">
<div class="col-md-12 mx-auto">
<div class="card">
<div class="card-body">
   <center><h3><i><b>All deliveries</b></i></h3></center><br /><br /><br />
    <center>
      
    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="delivery_id" CellPadding="4" ForeColor="#333333" 
        GridLines="None" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
        <Columns>
           
            <asp:TemplateField HeaderText="Order ID">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("order_no") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtorder_no" Text='<%# Eval("order_no") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="location">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("location") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    
                     <asp:DropDownList ID="txtlocation" Text='<%# Eval("location") %>' BorderColor="#00ff99" runat="server" Width="140px">
                         <asp:ListItem Value="Matara">Matara</asp:ListItem>
                         <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
                         <asp:ListItem Value="Galle">Galle</asp:ListItem>
                         <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                         <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
                         <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
                     </asp:DropDownList>
                </EditItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Vehicle Number">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("vehicle_no") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtvehicle_no" Text='<%# Eval("vehicle_no") %>' runat="server"></asp:TextBox>
                </EditItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Deliver Date">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("date") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtdate" Text='<%# Eval("date") %>' TextMode="Date" runat="server"></asp:TextBox>
                </EditItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Deliver Status">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("status") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="txtstatus" Text='<%# Eval("status") %>' BorderColor="#00ff99" runat="server" Width="140px">
                                     <asp:ListItem Value="Delivered">Delivered</asp:ListItem>
                                     <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                     </asp:DropDownList>
                   <%-- <asp:TextBox ID="txtstatus" Text='<%# Eval("status") %>' runat="server"></asp:TextBox>--%>
                </EditItemTemplate>
                
            </asp:TemplateField>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/photos/Education_Edit_pencil_1-copy-6.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                     <asp:ImageButton ImageUrl="~/photos/download.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ImageUrl="~/photos/saved-icon-29.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/photos/cancel-icon-png-12.jpg" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />

                </EditItemTemplate>
               
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        <br />
        <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Gray"></asp:Label>
        <br />
         <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red"></asp:Label>
        </center>
    <br /><br /><hr /><br /><br /></div></div></div></div><center>
        
   
        <br /><br /><br /><br />
    </center>
    <br /><br /><br />

</asp:Content>
