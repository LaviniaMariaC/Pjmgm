using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
namespace Licenta2
{
    public partial class MUtilizatori : System.Web.UI.Page
    {
        public static String CS4 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select nume, parola, telefon, email, tip from Utilizator", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDateP = new DataTable();
                        sda.Fill(dtDateP);
                        rptrDatep.DataSource = dtDateP;
                        rptrDatep.DataBind();
                    }

                }
            }
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select nume, parola, telefon, email, tip from Utilizator where nume='" + txtAPrenume.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlConnection con4 = new SqlConnection(CS4);
                    string gry4 = "delete Utilizator where nume='" + txtAPrenume.Text + "'and telefon='" + telefon.Text + "'and tip='" + TextBox2.Text+ "'and email='" + Email + "'";
                    con4.Open();
                    SqlCommand cmd4 = new SqlCommand(gry4, con4);
                    SqlDataReader rd4;
                    rd4 = cmd4.ExecuteReader();
                    Label1.Text = "Ștergere realizată cu succes!";
                    Label1.ForeColor = Color.Green;
                }

            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Utilizatorul nu există!";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
