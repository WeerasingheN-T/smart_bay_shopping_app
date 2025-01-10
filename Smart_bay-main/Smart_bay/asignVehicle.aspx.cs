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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            viewVehicle();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from  vehicle_table where city_name='" + DropDownList1.SelectedItem.Value + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)

                {
                    Response.Write("<script>alert('Couldn;t add same city');</script>");

                }
                else
                {
                    //con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO vehicle_table(city_name,vehicle_number,driver_name) values(@city_name,@vehicle_number,@driver_name)", con);
                    cmd.Parameters.AddWithValue("city_name", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("vehicle_number", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("driver_name", TextBox7.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Vehicle asigned');</script>");
                    viewVehicle();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void viewVehicle()
        {
            try
            {
                DataTable dtb2 = new DataTable();
                using (SqlConnection con = new SqlConnection(strcon))
                {

                    con.Open();

                    SqlDataAdapter cmd1 = new SqlDataAdapter("select * from vehicle_table", con);

                    cmd1.Fill(dtb2);
                }

                GridView2.DataSource = dtb2;
                GridView2.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        /*protected void delete_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            SqlCommand sqlcomm = new SqlCommand("deleteRow", con);
            sqlcomm.CommandType = CommandType.StoredProcedure;
            sqlcomm.Parameters.AddWithValue("@cname", DropDownListD.SelectedItem.Value);
            con.Open();
            sqlcomm.ExecuteReader();
            viewVehicle();
            SuccessMessage.Text = "Record Deleted";
            con.Close();

        }*/

        protected void update1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand sqlcomm = new SqlCommand("updateeRow", con);
            sqlcomm.CommandType = CommandType.StoredProcedure;
            sqlcomm.Parameters.AddWithValue("@cnm", DropDownList3.SelectedItem.Value);
            sqlcomm.Parameters.AddWithValue("@vno", u2.Text);
            sqlcomm.Parameters.AddWithValue("@dnm", u3.Text);
            con.Open();
            sqlcomm.ExecuteReader();
            viewVehicle();
            SuccessMessage2.Text = "Record Updated";
            con.Close();
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from vehicle_table where city_name ='" + DropDownList3.SelectedItem.Value + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    u2.Text = dr.GetValue(1).ToString();
                    u3.Text = dr.GetValue(2).ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}