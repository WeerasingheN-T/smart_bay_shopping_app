<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminOrderManagement.aspx.cs" Inherits="Smart_bay.adminOrderManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                
                    
                    <div class="col-md-7">
                       
                                <style>
                                    @media print {
                                        body * {
                                            visibility: hidden;
                                        }

                                        .print-container, .print-container * {
                                            visibility: visible;
                                        }
                                    }
                                </style>

                                <div class="row print-container">
                                    <div class="col">
                                        <center>
                                            <h4>Sales List</h4>
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [ID], [Order_ID], [ItemNames], [TotalPrice] FROM [order_management]"></asp:SqlDataSource>


                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1445px">
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                                                <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
                                                <asp:BoundField DataField="ItemNames" HeaderText="ItemNames" SortExpression="ItemNames" />
                                                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />


                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                        <br />
                                        <section>
                                            <center>
                                                <button class="btn btn-success btn-block btn-lg col-6 buttonA" onclick="window.print();">Click here to print all Orders</button>
                                            </center>
                                        </section>
                                        <br>
                                    </div>
                                </div>

                            </div>
                        </div>
                    
        </div>
        </div>
            <a href="AdminManagement.aspx"><i><< Go to Home </i></a>
            <br>
</asp:Content>