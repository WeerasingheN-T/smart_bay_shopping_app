using System;
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
    public partial class WebForm19 : System.Web.UI.Page
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

            if (!this.IsPostBack)
            {
                String code = Request.QueryString["code"];

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from item_management where code = '" + code + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["price"].ToString();
                TextBox2.Text = dt.Rows[0]["presentStock"].ToString();
                TextBox3.Text = dt.Rows[0]["colors"].ToString();
                TextBox4.Text = dt.Rows[0]["sizes"].ToString();
                TextBox5.Text = dt.Rows[0]["itemName"].ToString();
                TextBox9.Text = dt.Rows[0]["code"].ToString();
                Image1.ImageUrl = dt.Rows[0]["img_link"].ToString();

                SqlCommand cmd1 = new SqlCommand("SELECT * from reviews where code = '" + code + "';", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);

                TextBox6.Text = dt1.Rows[0]["datetime"].ToString();
                TextBox7.Text = dt1.Rows[0]["experienceRate"].ToString();

            }
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
                SqlCommand cmd = new SqlCommand("insert into cart_management(itemName,Quantity,CustID,price)values(@itemName,@Quantity,@CustID,@price)", con);
                cmd.Parameters.AddWithValue("@itemName", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Quantity", quantity.Text.Trim());
                cmd.Parameters.AddWithValue("@CustID", Session["username"]);
                cmd.Parameters.AddWithValue("@price", TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("cart.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into cart_management(itemName,Quantity,CustID,price)values(@itemName,@Quantity,@CustID,@price)", con);
                cmd.Parameters.AddWithValue("@itemName", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Quantity", quantity.Text.Trim());
                cmd.Parameters.AddWithValue("@CustID", Session["username"]);
                cmd.Parameters.AddWithValue("@price", TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String code = TextBox9.Text.Trim();
            Response.Redirect(String.Format("~/Reviews.aspx?code={0}", code));
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
            Response.Write("<script>alert('Successfully Log out');</script>");
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