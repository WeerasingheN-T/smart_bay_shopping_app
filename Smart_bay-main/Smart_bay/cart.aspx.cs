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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        private decimal totalsalary = (decimal)0.0;


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("Customer"))
                {
                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            if (!IsPostBack)
            {
                showData();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("catagories.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientHome.aspx");
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            EGridView1.Columns.Clear();
            EGridView1.DataSource = null;
            EGridView1.DataBind();
            deleteAll();
            orderID();
        }

        void deleteAll()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM cart_management", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Ordered');</script>");

                EGridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void EGridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                totalsalary += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "price"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[2].Text = String.Format("{0:c}", totalsalary);
            }

            txtTprice.Text = totalsalary.ToString();
            txtTotalPrice.Text = totalsalary.ToString();
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                foreach (object i in ListBox1.Items)
                {
                    SqlCommand sqlCommand = new SqlCommand("insert into order_management(Order_ID,CustomerID,Location,ItemNames,TotalPrice)values(@Order_ID,@CustomerID,@Location,'" + i.ToString() + "',@TotalPrice)", con);
                    SqlCommand cmd = sqlCommand;
                    cmd.Parameters.AddWithValue("@Order_ID", TxtOrderId.Text.Trim());
                    cmd.Parameters.AddWithValue("@CustomerID", Session["username"]);
                    cmd.Parameters.AddWithValue("@Location", txtLocation.Text.Trim());

                    cmd.Parameters.AddWithValue("@TotalPrice", txtTotalPrice.Text.Trim());

                    cmd.ExecuteNonQuery();
                }

                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            Response.Redirect("viewCost.aspx");
        }

        public void orderID()
        {
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

            TxtOrderId.Text = (otp);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM cart_management", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully');</script>");

                EGridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        public void DeleteRecord(int ID)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("delete from cart_management where ID=@ID", con);
            com.Parameters.AddWithValue("@ID", ID);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void showData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter adapt = new SqlDataAdapter("select * from cart_management", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            EGridView1.DataSource = dt;
            EGridView1.DataBind();
        }

        protected void remove_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow grow in EGridView1.Rows)
            {

                CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");

                if (chkdel.Checked)
                {
                    int ID = Convert.ToInt32(grow.Cells[0].Text);
                    DeleteRecord(ID);
                }
            }
            showData();
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
            Response.Write("<script>alert('Successfully Log out');</script>");

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