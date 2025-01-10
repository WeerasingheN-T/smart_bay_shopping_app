using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_bay
{

    public partial class userlogin : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // user login
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from user_reg_form where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Successful login');</script>");
                        Session["username"] = dr.GetValue(11).ToString();
                        Session["fullname"] = dr.GetValue(2).ToString() + dr.GetValue(3).ToString();
                        Session["role"] = dr.GetValue(0).ToString();
                        Session["farmer_id"] = dr.GetValue(11).ToString();

                        //Session["status"] = dr.GetValue(10).ToString();
                    }
                    
                    if (Session["role"].Equals("Customer"))
                    {
                        Response.Redirect("ClientHome.aspx");
                    }
                    else if (Session["role"].Equals("Seller"))
                    {
                        Response.Redirect("SellerHome.aspx");
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}