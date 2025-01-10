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
    public partial class SellerProfileView : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                /* if (Session["role"].Equals("user"))
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


                 }*/


            }
            catch (Exception ex)
            {

            }

            try
            {
                /* if (Session["farmer_id"].ToString() == "" || Session["farmer_id"] == null)
                 {
                     Response.Write("<script>alert('Session Expired Update Again');</script>");
                     Response.Redirect("userlogin.aspx");
                 }
                 else
                 {

                     if (!Page.IsPostBack)
                     {*/
                getFarmerDetails();
                /*  }

              }*/
            }
            catch (Exception ex)
            {



                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }



            void getFarmerDetails()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from farmer_reg_form where farmer_id = '" + Session["farmer_id"].ToString() + "';", con);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    TextBox224.Text = dt.Rows[0]["farmer_name"].ToString();
                    TextBox225.Text = dt.Rows[0]["farmer_dateofbirth"].ToString();
                    TextBox226.Text = dt.Rows[0]["contact_num"].ToString();
                    TextBox227.Text = dt.Rows[0]["email"].ToString();
                    TextBox228.Text = dt.Rows[0]["nic"].ToString();
                    DropDownList22.SelectedValue = dt.Rows[0]["province"].ToString().Trim();
                    TextBox229.Text = dt.Rows[0]["city"].ToString();
                    TextBox230.Text = dt.Rows[0]["acc_number"].ToString();
                    TextBox231.Text = dt.Rows[0]["address"].ToString();
                    TextBox232.Text = dt.Rows[0]["farmer_id"].ToString();
                    TextBox111.Text = dt.Rows[0]["postal_code"].ToString();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }


        }
    }

}