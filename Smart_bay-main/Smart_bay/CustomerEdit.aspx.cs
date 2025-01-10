using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Farming
{
    public partial class WebForm15 : System.Web.UI.Page
    {
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				if (Session["role"].Equals("Customer"))
				{

					LinkButton3.Visible = true; // logout link button
					LinkButton6.Visible = true;
					LinkButton8.Visible = true;
					LinkButton9.Visible = true;
					LinkButton10.Visible = true;

					LinkButton7.Visible = true; // hello user link button
					LinkButton7.Text = "Hello " + Session["username"].ToString();

				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}

			try
			{
				if (Session["username"].ToString() == "" || Session["username"] == null)
				{
					Response.Write("<script>alert('Session Expired Login Again');</script>");
					Response.Redirect("userlogin.aspx");
				}
				else
				{
					if (!Page.IsPostBack)
					{
						getCustomerDetails();
					}

				}
			}
			catch (Exception ex)
			{

				Response.Write("<script>alert('Session Expired Login Again');</script>");
				Response.Redirect("userlogin.aspx");
			}

		}
		protected void Button11_Click(object sender, EventArgs e)
		{
			if (Session["username"].ToString() == "" || Session["username"] == null)
			{
				Response.Write("<script>alert('Session Expired Login Again');</script>");
				Response.Redirect("userlogin.aspx");
			}
			else
			{
				updateCustomerDetails();

			}

		}

		protected void Button12_Click(object sender, EventArgs e)
		{
			if (Session["username"].ToString() == "" || Session["username"] == null)
			{
				Response.Write("<script>alert('Session Expired Login Again');</script>");
				Response.Redirect("userlogin.aspx");
			}
			else
			{
				getCustomerDetails();

			}

		}

		private string Encrypt(string clearText)
		{
			string EncryptionKey = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
			byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
			using (Aes encryptor = Aes.Create())
			{
				Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
				encryptor.Key = pdb.GetBytes(32);
				encryptor.IV = pdb.GetBytes(16);
				using (MemoryStream ms = new MemoryStream())
				{
					using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
					{
						cs.Write(clearBytes, 0, clearBytes.Length);
						cs.Close();
					}
					clearText = Convert.ToBase64String(ms.ToArray());
				}
			}
			return clearText;
		}

		void updateCustomerDetails()
		{
			string password = "";
			if (TextBox5.Text.Trim() == "")
			{
				password = TextBox12.Text.Trim();
			}
			else
			{
				password = (TextBox5.Text.Trim());
			}
			try
			{
				if (TextBox5.Text.Trim() != TextBox12.Text.Trim())
				{
					Response.Write("<script>alert('Password and Confirm password is not matched');</script>");

				}

				else
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
					{
						con.Open();
					}


					SqlCommand cmd = new SqlCommand("update user_reg_form set user_fname=@user_fname,user_lname=@user_lname,contactnumber=@contactnumber, email=@email, nic=@nic, address=@address WHERE username='" + Session["username"].ToString().Trim() + "'", con);

					cmd.Parameters.AddWithValue("@user_fname", TextBox1.Text.Trim());
					cmd.Parameters.AddWithValue("@user_lname", TextBox2.Text.Trim());
					cmd.Parameters.AddWithValue("@contactnumber", TextBox3.Text.Trim());
					cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
					cmd.Parameters.AddWithValue("@nic", TextBox11.Text.Trim());
					cmd.Parameters.AddWithValue("@address", TextBox6.Text.Trim());

					int result = cmd.ExecuteNonQuery();
					con.Close();
					if (result > 0)
					{

						Response.Write("<script>alert('Your Details Updated Successfully');</script>");
						Response.Redirect("customerProfile.aspx");

					}
					else
					{
						Response.Write("<script>alert('Invaid entry');</script>");
					}
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		void getCustomerDetails()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * from user_reg_form where username = '" + Session["username"].ToString() + "';", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				TextBox1.Text = dt.Rows[0]["user_fname"].ToString();
				TextBox2.Text = dt.Rows[0]["user_lname"].ToString();
				TextBox3.Text = dt.Rows[0]["contactnumber"].ToString();
				TextBox4.Text = dt.Rows[0]["email"].ToString();
				TextBox11.Text = dt.Rows[0]["nic"].ToString();
				TextBox6.Text = dt.Rows[0]["address"].ToString();

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		void updateUserDetails()
		{
			string password = "";
			if (TextBox5.Text.Trim() == "")
			{
				password = TextBox12.Text.Trim();
			}
			else
			{
				password = (TextBox5.Text.Trim());
			}
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("update user_reg_form set password=@password,confirm_pwd=@confirm_pwd WHERE username='" + Session["username"].ToString().Trim() + "'", con);

				cmd.Parameters.AddWithValue("@password", (password));
				cmd.Parameters.AddWithValue("@confirm_pwd", TextBox5.Text.Trim());

				int result = cmd.ExecuteNonQuery();
				con.Close();
				if (result > 0)
				{

					Response.Write("<script>alert('Your Details Updated Successfully');</script>");
					getCustomerDetails();

				}
				else
				{
					Response.Write("<script>alert('Invaid entry');</script>");
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		void clearForm()
		{
			TextBox1.Text = "";
			TextBox3.Text = "";
			TextBox4.Text = "";
			TextBox6.Text = "";

			TextBox5.Text = "";

		}

		protected void LinkButton7_Click(object sender, EventArgs e)
		{
			Response.Redirect("customerProfile.aspx");
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Session["username"] = "";
			Session["fullname"] = "";
			Session["role"] = "";

			LinkButton3.Visible = false; // logout link button
			LinkButton7.Visible = false; // hello user link button
			Response.Redirect("SmartHome.aspx");


		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			Response.Redirect("Clothing.aspx");
		}

		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			Response.Redirect("#");
		}

		protected void LinkButton4_Click(object sender, EventArgs e)
		{
			Response.Redirect("#");
		}

		protected void LinkButton5_Click(object sender, EventArgs e)
		{
			Response.Redirect("#");
		}
	}
}