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
    public partial class WebForm18 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

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