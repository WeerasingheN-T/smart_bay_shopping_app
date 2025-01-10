using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class SoldItems : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                showData();
            }
            try
            {
                /*if (Session["role"].Equals("user"))
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

        protected void showData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter adapt = new SqlDataAdapter("select * from farmer_request_items where farmer_id = '" + Session["farmer_id"].ToString() + "'", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        public void DeleteRecord(int id)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("delete from farmer_request_items where id=@id", con);
            com.Parameters.AddWithValue("@id", id);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Deleted Successfully');</script>");
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow grow in GridView1.Rows)
            {



                CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");



                if (chkdel.Checked)
                {
                    int id = Convert.ToInt32(grow.Cells[0].Text);
                    DeleteRecord(id);
                }
            }
            showData();
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }

        /*protected void LinkButton3_Click(object sender, EventArgs e)
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