<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="asignVehicle.aspx.cs" Inherits="E_Farming.WebForm2" %>
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
    <hr />
    <center>
        <h4>Assign Vehicle</h4>
        <img src="photos/deliver_1_1.png" /></center>
      <div align="center">  
    <table style="width: 30%;" border="0">
    <tr><td></td>
        <td><h4>City Name</h4>
        
        
    
        
    
        <asp:DropDownList ID="DropDownList1" Height="30px" Width="366px" BorderColor="#00ff99" runat="server">
            <asp:ListItem Value="Matara">Matara</asp:ListItem>
            <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
            <asp:ListItem Value="Galle">Galle</asp:ListItem>
            <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
            <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
            <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
            </asp:DropDownList>

            <h4>Vehicle Number</h4>
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Vehicle Number" BorderColor="#00ff99" Width="366px"></asp:TextBox>
           
        <h4>Driver Name</h4>
         <asp:TextBox ID="TextBox7" runat="server" placeholder="Name Of The Driver" BorderColor="#00ff99" Width="366px"></asp:TextBox>
    <br /><br /><asp:Button class="btn btn-success" ID="Button2" runat="server"  Text="asign vehicle" OnClick="Button2_Click" Width="366px" />
       </td><td></td></tr>
         
        
</table></div><br />

    
    
    <br /><br /><br /><hr /><br />
   
    <div>
        <center>
             <h4>Assigned Vehicles And Driver Names</h4><br /><br />


            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="205px" Width="405px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />

                <Columns>

                    <asp:TemplateField HeaderText="City Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("city_name") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                       

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vehicle Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("vehicle_number") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Driver Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("driver_name") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        

                    </asp:TemplateField>
                    

                </Columns>

            </asp:GridView>

        </center><br /><br />
        <p><i><b>use this fields to delete assigned vehicles from system.if one vehicle belongs to one city it is ok.
                But if one city cannot have two or more vehicles </b></i></p>
        <br />
            <br /><hr />
            
            <div align="center">
                <hr />
                 <h3>Update Assigned Vehicle Details Here</h3><br />
                
            <asp:DropDownList ID="DropDownList3" Width="180px" BorderColor="#00ff99" Height="30px" runat="server">
            <asp:ListItem Value="Matara">Matara</asp:ListItem>
            <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
            <asp:ListItem Value="Galle">Galle</asp:ListItem>
            <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
            <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
            <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
            </asp:DropDownList><asp:Button ID="btn5" Text="go" runat="server" OnClick="btn5_Click" /><br /><br />
             <asp:TextBox ID="u2"  placeholder="vehicle number" runat="server" BorderColor="#00ff99" Width="220px"></asp:TextBox><br /><br />
             <asp:TextBox ID="u3"  runat="server" placeholder="driver name" BorderColor="#00ff99" Width="220px"></asp:TextBox><br /><br /><br />
              <asp:Button ID="update1" class="btn btn-outline-warning" runat="server" Text="Update" OnClick="update1_Click" OnClientClick="clear" Width="284px" />
            
            <asp:Label ID="SuccessMessage2" Text="" runat="server" ForeColor="Gray"></asp:Label>
                <hr />
                    </div>
             
        </div>
       
        <br /><br /><br /><br />
    </div>

</asp:Content>
