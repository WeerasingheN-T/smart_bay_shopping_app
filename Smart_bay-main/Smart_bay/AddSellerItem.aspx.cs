using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace E_Farming
{
    public partial class AddSellerItem : System.Web.UI.Page
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
        }

        protected void Button10_Click(object sender, EventArgs e)
        {

            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into farmer_request_items(farmer_id,category,item_name,weight_quantity,unit_price,id,size,colour)values(@farmer_id,@category,@item_name,@weight_quantity,@unit_price,@id,@size,@colour)", con);
                cmd.Parameters.AddWithValue("@farmer_id", Session["farmer_id"]);
                cmd.Parameters.AddWithValue("@category", Catagories.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@item_name", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@weight_quantity", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@unit_price", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@size", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@colour", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@id", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Request sent Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            clear();
        }

        void clear()
        {
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox2.Text = "";
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
            /*Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";




            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            Response.Redirect("FarmHome.aspx");*/


        }

        protected void Catagories_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox12_TextChanged(object sender)
        {

        }
    }
}
