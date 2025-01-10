using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace E_Farming
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("user"))
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
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("select * from charge where custid ='" + Session["username"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox4.Text = dr.GetValue(0).ToString();



                }



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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("INSERT INTO Customer_payment(Customer_name,CID,Payment,Contact_no,Email_address,Card_type,Card_number)values(@Customer_name,@CustomerID,@Payment,@Contact_no,@Email_address,@Card_type,@Card_number)", con);
                //cmd.Parameters.AddWithValue("@PID", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Customer_name", TextBox1.Text.Trim());
                //cmd.Parameters.AddWithValue("@CID", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@CustomerID", Session["username"]);
                cmd.Parameters.AddWithValue("@Contact_no", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Payment", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_address", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Card_type", RadioButtonList1.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@Card_type", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Card_number", TextBox5.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}