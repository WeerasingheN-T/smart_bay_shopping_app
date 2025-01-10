<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addItem aspx.aspx.cs" Inherits="E_Farming.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br /><br />
    <div class="container">
    <div class="row">
         <div class="col-md-6 mx-auto">
           <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                               <center>

   <h1 align="center"><b>Item</b></h1>
    
             
             
        
        <img id="imgview" style="width: 355px; height: 193px" src="photos/item.png" /><br/><br />
        

        <asp:FileUpload onchange="readURL(this);" class="form-control shadow" ID="FileUpload1" runat="server" /><br/>

         <asp:Label Text="*" runat="server" ForeColor="Red" />       
        <asp:Label Text="Item Code" runat="server" /><br />
				
                <asp:TextBox class="form-control shadow" ID="txtItemCode" runat="server" required="true" /><br/>
				
        <asp:label Text="Item Name" runat="server" /><br/>
				
                 <asp:TextBox class="form-control shadow" ID="txtItemName" runat="server"/><br/>

         <asp:Label Text="*" runat="server" ForeColor="Red" />      
        <asp:label Text="Catagories" runat="server" /><br/>
		<asp:TextBox class="form-control shadow" ID="Catagories" runat="server" required="true" /><br/>
     
        <asp:Label Text="*" runat="server" ForeColor="Red" />
        <asp:label Text="Price" runat="server" required="true"/><br/>
				
				<asp:TextBox class="form-control shadow" ID="txtPrice" runat="server" /><br/>

        

        <asp:label Text="Present Stock" runat="server" /><br/>
				
				<asp:TextBox class="form-control shadow" ID="txtPresentStock" runat="server" /><br/><br/><br/><br/>
            <asp:Button class="btn btn-lg btn-block btn-success" Width="200px" ID="sub" runat="server" Text="Submit" OnClick="sub_Click"   />
                   
           <br/><br/>
           
                                      
                            
                        
                </div>
            </div>
                    </div>
            </div>
             </div>
                    </div>
            </div>
    <br /><br />
     
     <a href="WelcomeAdminPB.aspx"><i> << Go to Home </i></a><br /><br />
</asp:Content>
