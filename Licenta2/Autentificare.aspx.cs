using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

namespace Licenta2
{
    public partial class Autentificare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        public static string EncodePasswordToBase64(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }




        protected void Button2_Click2(object sender, EventArgs e)
        {
            Parola.Text = EncodePasswordToBase64(Parola.Text);
            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select *from Utilizator where email='" + Utilizator.Text + "' and Parola='" + Parola.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {

                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();
                    if (Utype == "2")
                    {
                        Session["USERNAME"] = Utilizator.Text;
                        Response.Redirect("~/Administrator.aspx");
                    }
                    if (Utype == "0")
                    {
                        Session["USERNAME"] = Utilizator.Text;
                        Response.Redirect("~/meniucl.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Email sau parolă greșite!";
                }
                 
            }
        }
    }
    }


  