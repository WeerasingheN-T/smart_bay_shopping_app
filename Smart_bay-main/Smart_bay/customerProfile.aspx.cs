using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm16 : System.Web.UI.Page
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

			try
			{
				if (Session["username"].ToString() == "" || Session["username"] == null)
				{
					Response.Write("<script>alert('Session Expired Login Again');</script>");
					Response.Redirect("userlogin.aspx");
				}
				else
				{
					if (!Page.IsPostBack)
					{
						getCustomerDetails();
					}

				}
			}
			catch (Exception ex)
			{

				Response.Write("<script>alert('Session Expired Login Again');</script>");
				Response.Redirect("userlogin.aspx");
			}

		}

		//userdefine
		void getCustomerDetails()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * from user_reg_form where username = '" + Session["username"].ToString() + "';", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				TextBox1.Text = dt.Rows[0]["user_fname"].ToString();
				TextBox2.Text = dt.Rows[0]["user_lname"].ToString();
				TextBox3.Text = dt.Rows[0]["contactnumber"].ToString();
				TextBox4.Text = dt.Rows[0]["email"].ToString();
				TextBox11.Text = dt.Rows[0]["nic"].ToString();
				TextBox6.Text = dt.Rows[0]["address"].ToString();
				TextBox12.Text = Session["username"].ToString();

				if (Session["username"].ToString().Equals(dt.Rows[0]["username"].ToString()))
				{
					TextBox5.Text = "Active";
				}
				else
				{
					TextBox5.Text = "Inactive";
				}


			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		protected void LinkButton7_Click(object sender, EventArgs e)
		{
			Response.Redirect("customerProfile.aspx");
		}

		protected void LinkButton9_Click(object sender, EventArgs e)
		{
			Response.Redirect("ReportofCustomer.aspx");
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Session["username"] = "";
			Session["fullname"] = "";
			Session["role"] = "";

			LinkButton3.Visible = false; // logout link button
			LinkButton7.Visible = false; // hello user link button
			Response.Redirect("SmartHome.aspx");
			Response.Write("<script>alert('Successfully Log out');</script>");

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



