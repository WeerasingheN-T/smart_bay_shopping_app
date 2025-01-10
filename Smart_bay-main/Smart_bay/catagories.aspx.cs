using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm10 : System.Web.UI.Page
    {
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
