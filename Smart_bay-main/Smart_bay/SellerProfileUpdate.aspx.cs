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
    public partial class SellerProfileUpdate : System.Web.UI.Page
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
                if (Session["farmer_id"].ToString() == "" || Session["farmer_id"] == null)
                {
                    Response.Write("<script>alert('Session Expired Update Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {

                    if (!Page.IsPostBack)
                    {
                        getFarmerDetails();
                    }

                }
            }
            catch (Exception ex)
            {



                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }

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

                TextBox24.Text = dt.Rows[0]["farmer_name"].ToString();
                TextBox25.Text = dt.Rows[0]["farmer_dateofbirth"].ToString();
                TextBox26.Text = dt.Rows[0]["contact_num"].ToString();
                TextBox27.Text = dt.Rows[0]["email"].ToString();
                TextBox28.Text = dt.Rows[0]["nic"].ToString();
                DropDownList2.SelectedValue = dt.Rows[0]["province"].ToString().Trim();
                TextBox29.Text = dt.Rows[0]["city"].ToString();
                TextBox30.Text = dt.Rows[0]["acc_number"].ToString();
                TextBox31.Text = dt.Rows[0]["address"].ToString();
                TextBox32.Text = dt.Rows[0]["farmer_id"].ToString();
                TextBox33.Text = dt.Rows[0]["confirm_password"].ToString();
                TextBox311.Text = dt.Rows[0]["postal_code"].ToString();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        protected void Button20_Click(object sender, EventArgs e)
        {

            UpdateFarm();
            UpdateUserFarm();
        }


        void UpdateFarm()
        {

            string confirm_password = "";
            if (TextBox34.Text.Trim() == "")
            {
                confirm_password = TextBox33.Text.Trim();
            }
            else
            {
                confirm_password = (TextBox34.Text.Trim());
            }


            try
            {



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE farmer_reg_form SET farmer_name=@farmer_name, farmer_dateofbirth=@farmer_dateofbirth, contact_num=@contact_num, email=@email, nic=@nic, province=@province, city=@city, acc_number=@acc_number, address=@address, postal_code=@postal_code, confirm_password=@confirm_password WHERE farmer_id='" + TextBox32.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@farmer_name", TextBox24.Text.Trim());
                cmd.Parameters.AddWithValue("@farmer_dateofbirth", TextBox25.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_num", TextBox26.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox27.Text.Trim());
                cmd.Parameters.AddWithValue("@nic", TextBox28.Text.Trim());
                cmd.Parameters.AddWithValue("@province", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox29.Text.Trim());
                cmd.Parameters.AddWithValue("@acc_number", TextBox30.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox31.Text.Trim());
                cmd.Parameters.AddWithValue("@postal_code", TextBox311.Text.Trim());
                cmd.Parameters.AddWithValue("@confirm_password", (confirm_password));




                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Your Details Updated Successfully');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }





        protected void Button21_Click(object sender, EventArgs e)
        {
            deleteFarmerDetails();
        }

        void deleteFarmerDetails()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from farmer_reg_form WHERE farmer_id='" + TextBox32.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('your profile Deleted Successfully');</script>");
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


            void clearForm()
            {
                TextBox24.Text = "";
                TextBox25.Text = "";
                TextBox26.Text = "";
                TextBox27.Text = "";
                TextBox28.Text = "";
                DropDownList2.Text = "";
                TextBox29.Text = "";
                TextBox30.Text = "";
                TextBox31.Text = "";
                TextBox32.Text = "";
                TextBox33.Text = "";
                TextBox34.Text = "";
            }

        }
        void UpdateUserFarm()
        {

            string confirm_password = "";
            if (TextBox34.Text.Trim() == "")
            {
                confirm_password = TextBox33.Text.Trim();
            }
            else
            {
                confirm_password = (TextBox34.Text.Trim());
            }


            try
            {



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Userdetails_Table_2 SET password=@password WHERE user_id='" + TextBox32.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@password", (confirm_password));



                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Your Details Updated Successfully');</script>");


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

        /*  protected void LinkButton3_Click(object sender, EventArgs e)
          {
              Session["username"] = "";
              Session["fullname"] = "";
              Session["role"] = "";




              LinkButton3.Visible = false; // logout link button
              LinkButton7.Visible = false; // hello user link button
              Response.Redirect("FarmHome.aspx");


          }*/

    }
}