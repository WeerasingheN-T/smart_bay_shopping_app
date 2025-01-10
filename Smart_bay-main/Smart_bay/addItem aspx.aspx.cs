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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sub_Click(object sender, EventArgs e)
        {
            try
            {
                string filepath = "~/item_Image/item.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("item_Image/" + filename));
                filepath = "~/item_Image/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into item_management(code,itemName,catagories,price,presentStock,img_link)values(@code,@itemName,@catagories,@price,@presentStock,@img_link)", con);
                cmd.Parameters.AddWithValue("@code", txtItemCode.Text.Trim());
                cmd.Parameters.AddWithValue("@itemName", txtItemName.Text.Trim());
                cmd.Parameters.AddWithValue("@catagories", Catagories.Text.Trim());
                cmd.Parameters.AddWithValue("@price", txtPrice.Text.Trim());

                cmd.Parameters.AddWithValue("@presentStock", txtPresentStock.Text.Trim());
                cmd.Parameters.AddWithValue("@img_link", filepath);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Added');</script>");
                //Response.Redirect("item aspx.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }



            clear();
        }


        /*protected void BtnviewItem_Click(object sender, EventArgs e)
        {
            Response.Redirect("item aspx.aspx");
        }*/
        void clear()
        {
            txtItemCode.Text = "";
            txtItemName.Text = "";
            txtPresentStock.Text = "";
            txtPrice.Text = "";
        }
    }
}