<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewCost.aspx.cs" Inherits="E_Farming.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="customerViewDelivery.aspx">Deliver Status</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="viewCost.aspx">View Deliver Charges</a>
                    </li>
                    
  
                       
                        
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton7" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>

                    </ul>		

               
            </div>
        </nav>
    </div>
    
    <hr />

    <h3><i>Check Your Delivery Cost Here</i></h3>
    <hr />
    <br /><center>
    <img src="photos/dlt.jpg" width="30%" height="30%" /></center><br />
    <center><p><b>Choose your city and check your delivery cost</b></p></center><br /><br />
    <center>
        
   <asp:DropDownList ID="DropDownListF" runat="server" Width="180px" BorderColor="#00ff99">
                                    <asp:ListItem Value="Matara">Matara</asp:ListItem>
                                    <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
                                    <asp:ListItem Value="Galle">Galle</asp:ListItem>
                                    <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                    <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
                                    <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
                                    </asp:DropDownList><asp:Button ID="Button1" runat="server" Text="Check" class="btn btn-outline-success" OnClick="Button1_Click" />
    </center><br /><br />
    <center><h4>Your delivery charge is :<asp:TextBox ID="TextBoxC" runat="server" Width="250px"></asp:TextBox></h4></center><br /><br />
   
    
    
    
        <br /><br /><center>

        <asp:Label Text="custid" runat="server" ID="ad"></asp:Label>
        <asp:TextBox ID="ad1" runat="server"  BorderColor="#00ff99" Width="176px"></asp:TextBox>
        <asp:Label Text="total" runat="server" ID="tt"></asp:Label>
        <asp:TextBox ID="tt1" runat="server"  BorderColor="#00ff99" Width="178px"></asp:TextBox>
        <asp:Label Text="Total Delivery Amount with Order" runat="server" ID="Label13"></asp:Label>
          <asp:TextBox ID="TextBoxT" runat="server" BorderColor="#00ff99" Width="178px"></asp:TextBox></center><br /><br /><center><asp:Button ID="Button2" runat="server" Text="Confirm" class="btn btn-success btn-sm" OnClick="Button2_Click" Width="304px" /></center>
        <br /><br />

    <hr />
    
   <center> <img src="photos/db.jpg" width="20%" height="20%"/></center><center><asp:Label runat="server" Font-Italic="true" Font-Size="Large" Font-Bold="true" text=" Below are the cities where we deliver your orders"></asp:Label>&nbsp;</center>
    <center>
         
    
        
        
        <table style="width: 50%; height: 50%; border-block:double; border-color:darkgreen; align-self:center" border="1" >
    <tr>
        <th>City Name</th>
       
        
    </tr>
    <tr>
        <td style="-moz-box-align:center;">Matara</td>
        
       
    </tr>
    <tr>
         <td style="-moz-box-align:center;">Galle</td>
        
        
    </tr>
         
    <tr>
         <td style="-moz-box-align:center;">Colombo</td>
     
        
    </tr>
         <tr>
         <td style="-moz-box-align:center;">Hambanthota</td>
      
        
    </tr>
    <tr>
         <td style="-moz-box-align:center;">Kandy</td>
        
        
    </tr>
    <tr>
         <td style="-moz-box-align:center;">Jafna</td>
        
        
    </tr>
</table></center>

</asp:Content>
