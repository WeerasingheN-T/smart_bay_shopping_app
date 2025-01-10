<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SmartHome.aspx.cs" Inherits="E_Farming.WebForm40" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container" style="height: 10rem;">

            <div class="row height d-flex justify-content-center align-items-center">

                <div class="col-md-8">

                    <div class="search">
                        <i class="fa fa-search"></i>
                        <input type="text" class="form-control" placeholder="Search Any Item In Your Mind">
                        <button class="btn btn-primary">Search</button>
                    </div>

                </div>

            </div>
        </div>

        <div class="title">
            <div class="col_a">
                <h1a><b>Smart bay<br>
                    Online Store</b></h1a><br>
                <br>
                <hr>
                <p1>A <b>Start shopping today</b> with new trends <b>as your wish.</b> Register with us <b>buy and sell items</b></p1><br>
                <hr>
                <!--   <asp:Button ID="Button1" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="User Login" OnClick="Button1_Click" />  
                <asp:Button ID="Button3" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="Farmer Login" OnClick="Button3_Click" /> -->
                <asp:Button ID="Button2" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="Login" OnClick="Button2_Click" />
                <asp:Button ID="Button4" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="Register" OnClick="Button4_Click" />
            </div>
            <div class="col_a">
                <div class="cardHome card1 shadow bg-transparent">
                    <br>
                    <br>
                    <br>
                    <h5a><b>Electronic</b></h5a><br>
                    <p1a><i>Surf arounfd millions of devices.</i></p1a>
                </div>
                <div class="cardHome card2 shadow">
                    <br>
                    <br>
                    <br>
                    <h5a><b>Clothing</b></h5a><br>
                    <p1a><i>Fasion makes you incredible.</i></p1a>
                </div>
                <div class="cardHome card3 shadow">
                    <br>
                    <br>
                    <h5a><b>Household</b></h5a><br>
                    <p1a><i>Decorate and make your daily routings easy</i></p1a>
                </div>
                <div class="cardHome card4 shadow">
                    <br>
                    <br>
                    <h5a><b>vehicle</b></h5a><br>
                    <p1a><i>Think geniously, use genuenly</i></p1a>
                </div>
            </div>


        </div>
    </section>
    <section>

        <div class="card-group">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <div class="card5 w-33 ">
      <img class="card-img-top shadow ">
      <div class="card-body">
          <h5 class="card-title">Toys</h5>
          <p class="card-text">Amaizing toys for children. Make them happy all the time</p>
          <button type="button" class="btn btn-dark">Shop Now</button>
      </div>
  </div>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <div class="card6  w-33">
      <img class="card-img-top">
      <div class="card-body">
          <h5 class="card-title">Staitionary</h5>
          <p class="card-text">All the school items you want. Buy all in one place. </p>
          <button type="button" class="btn btn-dark">Shop Now</button>
      </div>
  </div>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <div class="card7  w-33">
      <img class="card-img-top">
      <div class="card-body">
          <h5 class="card-title">20% Discount for orders over 500$</h5>
          <p class="card-text">Shop more & win grant discounts.</p>
          <button type="button" class="btn btn-dark">Shop Now</button>
      </div>
  </div>
        </div>


    </section>
</asp:Content>
