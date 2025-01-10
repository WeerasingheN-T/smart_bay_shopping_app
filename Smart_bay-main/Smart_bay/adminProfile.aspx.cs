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

namespace Smart_bay
{
	public partial class adminProfile : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
		{

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


				}


			}
			catch (Exception ex)
			{

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
					{ */
				getCustomerDetails();
				/*}

			}*/
			}
			catch (Exception ex)
			{

				Response.Write("<script>alert('Session Expired Login Again');</script>");
				Response.Redirect("userlogin.aspx");
			}

		}
		//update button
		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Session["username"].ToString() == "" || Session["username"] == null)
			{
				Response.Write("<script>alert('Session Expired Login Again');</script>");
				Response.Redirect("userlogin.aspx");
			}
			else
			{
				UpdateAdminDetails();
				//updateUserDetails();

			}

		}
		/*private string Encrypt(string clearText)
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
		*/
		void UpdateAdminDetails()
		{
			/*string password = "";
			/*if (TextBox10.Text.Trim() == "")
			{
				password = TextBox9.Text.Trim();
			}
			else
			{*/
			/*password = (TextBox10.Text.Trim());
			//}
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}


				SqlCommand cmd = new SqlCommand("update admin_Table_1 set password=@password,full_name=@full_name,role=@role,email=@email,address=@address,contactno=@contactno WHERE username='" + Session["username"].ToString().Trim() + "'", con);

				cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
				cmd.Parameters.AddWithValue("@contactno", TextBox3.Text.Trim());
				cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
				cmd.Parameters.AddWithValue("@role", TextBox6.Text.Trim());
				cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
				cmd.Parameters.AddWithValue("@password", (password));


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
			}*/


			SqlConnection con = new SqlConnection(strcon);
			SqlCommand sqlcomm = new SqlCommand("updateAdminRow", con);
			sqlcomm.CommandType = CommandType.StoredProcedure;
			sqlcomm.Parameters.AddWithValue("@un", Session["username"]);
			sqlcomm.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
			sqlcomm.Parameters.AddWithValue("@contactno", TextBox3.Text.Trim());
			sqlcomm.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
			sqlcomm.Parameters.AddWithValue("@role", TextBox6.Text.Trim());
			sqlcomm.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
			sqlcomm.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
			con.Open();
			sqlcomm.ExecuteReader();
			getCustomerDetails();


			Response.Write("<script>alert('Your Details Updated Successfully');</script>");
			getCustomerDetails();

			con.Close();



		}
		//userdefine
		void getCustomerDetails()
		{
			
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * from admin_Table_1 where username =  '" + Session["username"].ToString() + "';", con);

				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				TextBox1.Text = dt.Rows[0]["full_name"].ToString();
				TextBox3.Text = dt.Rows[0]["contactno"].ToString();
				TextBox4.Text = dt.Rows[0]["email"].ToString();
				TextBox6.Text = dt.Rows[0]["role"].ToString();
				TextBox5.Text = dt.Rows[0]["address"].ToString();
				TextBox8.Text = dt.Rows[0]["username"].ToString();

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}


		//delete query

		bool checkIfCustomerExists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("SELECT * from admin_Table_1 where username='" + TextBox8.Text.Trim() + "';", con);
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

		/*void deleteCustomerDetails()
		{
			if (checkIfCustomerExists())
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
					{
						con.Open();
					}

					SqlCommand cmd = new SqlCommand("DELETE from Customer_Table_1 WHERE customer_id='" + TextBox8.Text.Trim() + "'", con);

					cmd.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('your profile Deleted Successfully');</script>");
					clearForm();


				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}

			}
			else
			{
				Response.Write("<script>alert(' Not suceess');</script>");
			}
		}



		//delete button
		protected void Button5_Click(object sender, EventArgs e)
		{
			deleteCustomerDetails();
		}*/

		/*void updateUserDetails()
		{
			string password = "";
			if (TextBox10.Text.Trim() == "")
			{
				password = TextBox9.Text.Trim();
			}
			else
			{
				password = (TextBox10.Text.Trim());
			}
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				// username eka hard code karala balanna awlk awoth
				SqlCommand cmd = new SqlCommand("update admin_Table_1 set password=@password WHERE username='" + Session["username"].ToString().Trim() + "'", con);


				cmd.Parameters.AddWithValue("@password", (password));


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
		}*/

		void clearForm()
		{
			TextBox1.Text = "";
			TextBox3.Text = "";
			TextBox4.Text = "";
			TextBox5.Text = "";
			TextBox8.Text = "";
			TextBox9.Text = "";
			TextBox10.Text = "";

		}

		protected void LinkButton7_Click(object sender, EventArgs e)
		{
			Response.Redirect("FarmHome.aspx");
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Session["username"] = "";
			Session["fullname"] = "";
			Session["role"] = "";




			LinkButton3.Visible = false; // logout link button
			LinkButton7.Visible = false; // hello user link button
			Response.Redirect("FarmHome.aspx");


		}
	}
}


