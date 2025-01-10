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
    public partial class WebForm4 : System.Web.UI.Page
    {
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

            try
            {



                SqlConnection con = new SqlConnection(strcon);
                SqlCommand sqlcomm = new SqlCommand("selectOrder", con);
                sqlcomm.CommandType = CommandType.StoredProcedure;
                sqlcomm.Parameters.AddWithValue("@oD", Session["username"]);
                con.Open();
                GridViewL.DataSource = sqlcomm.ExecuteReader();
                GridViewL.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        protected void ButtonA_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand sqlcomm = new SqlCommand("[selectStatus]", con);
                sqlcomm.CommandType = CommandType.StoredProcedure;
                sqlcomm.Parameters.AddWithValue("@oN", ds.Text.Trim());
                sqlcomm.Parameters.AddWithValue("@cun", Session["username"]);
                con.Open();
                GridView3.DataSource = sqlcomm.ExecuteReader();
                GridView3.DataBind();

                con.Close();
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