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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection con = new SqlConnection(strcon))
                {

                    con.Open();

                    SqlDataAdapter cmd = new SqlDataAdapter("select Order_ID,Location,OrderDate from order_management", con);

                    cmd.Fill(dtbl);
                }

                GridViewD.DataSource = dtbl;
                GridViewD.DataBind();





            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO deliveries_table(order_no,location,vehicle_no,date,status) values(@order_no,@location,@vehicle_no,@date,@status)", con);

                cmd.Parameters.AddWithValue("order_no", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("location", DropDownListG.SelectedItem.Value);
                cmd.Parameters.AddWithValue("vehicle_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("date", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("status", DropDownList4.SelectedItem.Value);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Delivery Added');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}