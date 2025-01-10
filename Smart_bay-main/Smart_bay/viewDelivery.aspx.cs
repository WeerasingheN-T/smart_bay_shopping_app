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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                viewDelivery();
            }
        }
        protected void viewDelivery()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection con = new SqlConnection(strcon))
                {

                    con.Open();

                    SqlDataAdapter cmd = new SqlDataAdapter("select * from deliveries_table", con);

                    cmd.Fill(dtbl);
                }

                GridView1.DataSource = dtbl;
                GridView1.DataBind();





            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            viewDelivery();
        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            viewDelivery();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    string query = "UPDATE deliveries_table SET order_no=@order_no,location=@location,vehicle_no=@vehicle_no,date=@date,status=@status WHERE delivery_id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    sqlCmd.Parameters.AddWithValue("@order_no", (GridView1.Rows[e.RowIndex].FindControl("txtorder_no") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@location", (GridView1.Rows[e.RowIndex].FindControl("txtlocation") as DropDownList).SelectedItem.Value);
                    sqlCmd.Parameters.AddWithValue("@vehicle_no", (GridView1.Rows[e.RowIndex].FindControl("txtvehicle_no") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@date", (GridView1.Rows[e.RowIndex].FindControl("txtdate") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@status", (GridView1.Rows[e.RowIndex].FindControl("txtstatus") as DropDownList).SelectedItem.Value);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    viewDelivery();
                    lblSuccessMessage.Text = "Record Updated";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {

                    con.Open();

                    String query = "DELETE FROM deliveries_table WHERE delivery_id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, con);

                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();

                    viewDelivery();
                    lblSuccessMessage.Text = "Record Deleted";
                    lblErrorMessage.Text = "";

                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}