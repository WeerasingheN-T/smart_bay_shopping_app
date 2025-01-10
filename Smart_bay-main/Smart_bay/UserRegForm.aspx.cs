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
    public partial class WebForm38 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into user_reg_form(user_type,user_dob,user_fname,user_lname,contactnumber,email,nic,country,poastalcode,city,address,username,password,confirm_pwd) values(@user_type,@user_dob,@user_fname,@user_lname,@contactnumber,@email,@nic,@country,@poastalcode,@city,@address,@username,@password,@confirm_pwd)", con);
                cmd.Parameters.AddWithValue("@user_type", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@user_dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@user_fname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@user_lname", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@contactnumber", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());            
                cmd.Parameters.AddWithValue("@nic", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@country", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@poastalcode", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox16.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@confirm_pwd", TextBox11.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            clear();

            Response.Redirect("userlogin.aspx");

        }

        void clear()
        {
            DropDownList2.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox12.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList3.Text = "";
            TextBox13.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox16.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }

        protected void btnGen_Click(object sender, EventArgs e)
        {
            IDgen();
        }

        public void IDgen()
        {
            char digit = 'F';
            String num = "123456789";
            int len = num.Length;
            String otp = String.Empty;
            int otpdigit = 5;
            String finaldigit;



            int getindex;



            for (int i = 0; i < otpdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finaldigit = num.ToCharArray()[getindex].ToString();
                }
                while (otp.IndexOf(finaldigit) != -1);
                otp += finaldigit;
            }



            TextBox6.Text = (digit + otp);



        }

    }
}