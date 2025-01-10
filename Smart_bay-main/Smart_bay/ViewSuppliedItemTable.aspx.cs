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
    public partial class ViewSuppliedItemTable : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                view();
                //showData();
            }
         /*   try
            {
                if (Session["role"].Equals("user"))
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

            }*/



            /*protected void showData()
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
            }*/

            /* protected void btndelete_Click(object sender, EventArgs e)
             {
                 foreach (GridViewRow grow in GridView1.Rows)
                 {



                     CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");



                     if (chkdel.Checked)
                     {
                         int id = Convert.ToInt32(grow.Cells[0].Text);
                         DeleteRecord(id);
                     }
                 }*/
            //showData();
        }
        /*protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }*/
        /*protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Response.Redirect("FarmHome.aspx");
		}*/

        /* protected void LinkButton3_Click(object sender, EventArgs e)
         {
             Session["username"] = "";
             Session["fullname"] = "";
             Session["role"] = "";




             LinkButton3.Visible = false; // logout link button
             LinkButton7.Visible = false; // hello user link button
             Response.Redirect("FarmHome.aspx");


         }*/


        protected void view()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection con = new SqlConnection(strcon))
                {

                    con.Open();

                    SqlDataAdapter cmd = new SqlDataAdapter("select * from farmer_request_items where farmer_id = '" + Session["farmer_id"].ToString() + "'", con);

                    cmd.Fill(dtbl);
                }

                GridView112.DataSource = dtbl;
                GridView112.DataBind();





            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void GridView112_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView112.EditIndex = e.NewEditIndex;
            view();
        }


        protected void GridView112_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView112.EditIndex = -1;
            view();
        }

        protected void GridView112_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    string query = "UPDATE farmer_request_items SET category=@category,item_name=@item_name,weight_quantity=@weight_quantity,unit_price=@unit_price, size=@size,colour=@colour WHERE id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, con);

                    sqlCmd.Parameters.AddWithValue("@category", (GridView112.Rows[e.RowIndex].FindControl("txtcategory") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@item_name", (GridView112.Rows[e.RowIndex].FindControl("txtitem_name") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@weight_quantity", (GridView112.Rows[e.RowIndex].FindControl("txtweight_quantity") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@unit_price", (GridView112.Rows[e.RowIndex].FindControl("txtunit_price") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@colour", (GridView112.Rows[e.RowIndex].FindControl("txtcolour") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@size", (GridView112.Rows[e.RowIndex].FindControl("txtsize") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView112.DataKeys[e.RowIndex].Value.ToString()));
                    //sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView112.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    GridView112.EditIndex = -1;
                    view();
                    /*lblSuccessMessage.Text = "Record Updated";
                    lblErrorMessage.Text = "";*/
                }
            }
            catch (Exception ex)
            {

            }
        }


        protected void GridView112_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {

                    con.Open();

                    String query = "DELETE FROM farmer_request_items WHERE id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, con);

                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView112.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();

                    view();


                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmHome.aspx");
        }


    }
}