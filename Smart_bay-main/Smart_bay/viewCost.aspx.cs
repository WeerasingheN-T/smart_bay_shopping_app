using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace E_Farming
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        private string message = string.Empty;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("Customer"))
                {



                    LinkButton3.Visible = true; // logout link button

                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                }

                else if (Session["role"].Equals("farmer"))

                {



                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["farmer_id"].ToString();


                }


            }
            catch (Exception ex)
            {

            }
            getMemberByID();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getCharge();
            chargeget();
        }
        protected void getCharge()
        {


            if (DropDownListF.SelectedItem.Value == "Matara")
            {
                TextBoxC.Text = 100.ToString();
            }
            else if (DropDownListF.SelectedItem.Value == "Galle")
            {
                TextBoxC.Text = 200.ToString();
            }
            else if (DropDownListF.SelectedItem.Value == "Colombo")
            {
                TextBoxC.Text = 300.ToString();
            }
            else if (DropDownListF.SelectedItem.Value == "Kandy")
            {
                TextBoxC.Text = 400.ToString();
            }
            else if (DropDownListF.SelectedItem.Value == "Hambanthota")
            {
                TextBoxC.Text = 600.ToString();
            }
            else if (DropDownListF.SelectedItem.Value == "Jafna")
            {
                TextBoxC.Text = 1000.ToString();
            }



        }
        void getMemberByID()
        { //have to change according to the farmer and stock
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("select * from order_management where CustomerID ='" + Session["username"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ad1.Text = dr.GetValue(2).ToString();
                    tt1.Text = dr.GetValue(6).ToString();


                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        public void chargeget()
        {
            float a, b;

            bool isAValid = float.TryParse(tt1.Text, out a);
            bool isBValid = float.TryParse(TextBoxC.Text, out b);

            if (isAValid && isBValid)
                TextBoxT.Text = (a + b).ToString();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO charge(total,custid) values(@total,@custid)", con);

                cmd.Parameters.AddWithValue("total", TextBoxT.Text.Trim());
                cmd.Parameters.AddWithValue("custid", Session["username"]);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Confirmed Payment');</script>");
                Response.Redirect("CustomerPay.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }
        /*protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Response.Redirect("FarmHome.aspx");
		}*/

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";




            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            Response.Redirect("FarmHome.aspx");


        }
    }
}