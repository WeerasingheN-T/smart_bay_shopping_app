<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="customerViewDelivery.aspx.cs" Inherits="E_Farming.WebForm4" %>
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
                   
     
                   <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>
                   
                   
                   		

                </ul>
            </div>
        </nav>
    </div><hr />
    
    <center>
    <h3>View Your Delivery Status</h3>

    <br />
    
    
        


         
       

   
        
         

        <asp:Label runat="server" Text="Your All Delivery Details are In Below Table" Font-Italic="true" Font-Size="Medium" Font-Underline="true" Font-Bold="true"></asp:Label><br /><br />
         <asp:GridView ID="GridViewL" runat="server" CellPadding="4" AutoGenerateColumns="false" ForeColor="#333333" GridLines="None" EmptyDataText="Delivery Status Will Be Updated Within 24 Hours" Height="265px" Width="523px">
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
               
               
            </asp:TemplateField>
    
            
            <asp:TemplateField HeaderText="Deliver Date">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("date") %>' runat="server"></asp:Label>
                </ItemTemplate>
                
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Deliver Status">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("status") %>' runat="server"></asp:Label>
                </ItemTemplate>
                
                
            </asp:TemplateField>

          
        </Columns>
            
           
        </asp:GridView>
           
       
           
        <br /><br /><br /><hr /><br /><br />
    


         <label>Enter Your Order Number</label>
    <asp:TextBox ID="ds" runat="server" BorderColor="#00ff99" Width="333px"></asp:TextBox> <asp:Button ID="ButtonA" runat="server" Text="Check" Width="60px" class="btn btn-primary" OnClick="ButtonA_Click" />
        <br /><br />
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" AutoGenerateColumns="false" ForeColor="#333333" GridLines="None" EmptyDataText="You entered an invalid Order Number" Height="202px" Width="451px">
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
               
               
            </asp:TemplateField>
    
            
            <asp:TemplateField HeaderText="Deliver Date">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("date") %>' runat="server"></asp:Label>
                </ItemTemplate>
                
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Deliver Status">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("status") %>' runat="server"></asp:Label>
                </ItemTemplate>
                
                
            </asp:TemplateField>

          
        </Columns>
           
           
        </asp:GridView>
    </center>


    <br /><br />

</asp:Content>
