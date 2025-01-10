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
    public partial class Reviews : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("Customer"))
                {

                    LinkButton3.Visible = true; // logout link button
                    LinkButton6.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;

                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            if (!this.IsPostBack)
            {
                String code = Request.QueryString["code"];

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from item_management where code = '" + code + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["code"].ToString();
                TextBox5.Text = dt.Rows[0]["itemName"].ToString();
                Image1.ImageUrl = dt.Rows[0]["img_link"].ToString();

            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerProfile.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            Response.Redirect("SmartHome.aspx");


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            String review = "Bad";
            TextBox3.Text = review;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String review = "Good";
            TextBox3.Text = review;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into reviews(code,experienceRate,review,datetime)values(@code,@experienceRate,@review,@datetime)", con);
                cmd.Parameters.AddWithValue("@code", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@experienceRate", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@review", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@datetime", DateTime.Now);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            clear();
        }

        void clear()
        {
            TextBox3.Text = "";
            TextBox6.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clothing.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("#");
        }
    }
}