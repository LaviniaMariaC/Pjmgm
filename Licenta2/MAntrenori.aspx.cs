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
    public partial class MAntrenori : System.Web.UI.Page
    {
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS4 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select Nume, Prenume, Clasapredata from Antrenori", con))
                    
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select Nume, Prenume, Clasapredata from Antrenori where Nume='" + TextBox1.Text + "' and Prenume='" + txtAPrenume.Text + "' ";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Antrenorul există!";
            }  
            else
            {
                String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Antrenori values('" + TextBox1.Text + "','" + txtAPrenume.Text + "','" + txtZi.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label9.ForeColor = Color.Green;
                    Label9.Text = "Antrenor adăugat!";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select Nume, Prenume, Clasapredata from Antrenori where Nume='" + TextBox1.Text + "' and Prenume='" + txtAPrenume.Text + "' ";
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
                    string gry4 = "update Antrenori set Nume='" + TextBox1.Text + "', Prenume='" + txtAPrenume.Text + "', Clasapredata='" + txtZi.Text + "' where Nume='" + TextBox1.Text + "' and Prenume='" + txtAPrenume.Text + "' ";
                    con4.Open();
                    SqlCommand cmd4 = new SqlCommand(gry4, con4);
                    SqlDataReader rd4;
                    rd4 = cmd4.ExecuteReader();
                    Label9.Text = "Modificare realizată cu succes!";
                    Label9.ForeColor = Color.Green;
                }

            }
            else
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Antrenorul nu există!";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select Nume, Prenume, Clasapredata from Antrenori where Nume='" + TextBox1.Text + "' and Prenume='" + txtAPrenume.Text + "' ";
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
                    string gry4 = "delete Antrenori where Nume='" + TextBox1.Text + "' and Prenume='" + txtAPrenume.Text + "'";
                    con4.Open();
                    SqlCommand cmd4 = new SqlCommand(gry4, con4);
                    SqlDataReader rd4;
                    rd4 = cmd4.ExecuteReader();
                    Label9.Text = "Ștergere realizată cu succes!";
                    Label9.ForeColor = Color.Green;
                }

            }
            else
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Antrenorul nu există!";
            }
        }
    }
}