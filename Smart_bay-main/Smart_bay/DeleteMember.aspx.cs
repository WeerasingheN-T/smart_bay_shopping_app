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
    public partial class WebForm43 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //Go button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getEmployeeByID();
        }
        //update
        /*protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                updateMember();
            }
            else
            {
                Response.Write("<script>alert('Member Does not Exist');</script>");
            }
        }
        */
        //delete member
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                deleteMember();
            }
            else
            {
                Response.Write("<script>alert('Member Does not Exists');</script>");
            }
        }
        /*    //Update go button
            protected void LinkButton2_Click(object sender, EventArgs e)
            {
                getDepartmentByID();
            }
        */
        //User defined method


        bool checkMemberExists()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_reg_form where username='" + TextBox1.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        //Go function
        void getEmployeeByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from user_reg_form where username='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(11).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox6.Text = dr.GetValue(6).ToString();
                        TextBox7.Text = dr.GetValue(7).ToString();
                        TextBox8.Text = dr.GetValue(8).ToString();
                        TextBox9.Text = dr.GetValue(9).ToString();
                        TextBox10.Text = dr.GetValue(10).ToString();
                        TextBox11.Text = dr.GetValue(5).ToString();
                        TextBox12.Text = dr.GetValue(12).ToString();

                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        /*user update function
        void updateMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Staff_management_tbl SET  Code_No=@Code_No,Department=@department,Designation=@designation,Basic_Salary=@basic_salary  where Employee_ID='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Code_No", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@department", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@basic_salary", TextBox5.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Update Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //udate department
        void getDepartmentByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Member_Department_tbl where Code_No='" + TextBox4.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox13.Text = dr.GetValue(1).ToString();
                        TextBox14.Text = dr.GetValue(2).ToString();
                        TextBox5.Text = dr.GetValue(3).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        } */
        //user Delete function

        void deleteMember()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from user_reg_form  where username='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member Deleted Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        protected void A_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffManagement.aspx");
        }

        protected void B_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalaryCalculation.aspx");
        }

        protected void C_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateBasicSalary.aspx");
        }

        protected void D_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentSalary.aspx");
        }
    }
}