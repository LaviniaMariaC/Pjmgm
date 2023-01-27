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
    public partial class MAbonClase : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS4 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select Nume, Prenume, TipS, PretR from Clase", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDate = new DataTable();
                        sda.Fill(dtDate);
                        Repeater1.DataSource = dtDate;
                        Repeater1.DataBind();
                    }

                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select Nume, Prenume, TipS, PretR from Clase where nume='" + TextBox1.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Categoria există!";
            }
            else
            {
                String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Clase values('" + TextBox1.Text + "','" + txtAPrenume.Text + "','" + txtZi.Text + "','" + TextBox2.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label9.ForeColor = Color.Green;
                    Label9.Text = "Categorie și prestator adăugat!";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select Nume, Prenume, TipS, PretR from Clase where nume='" + TextBox1.Text + "'";
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
                    string gry4 = "update Clase set nume='" + TextBox1.Text + "', prenume='" + txtAPrenume.Text + "', tips='" + txtZi.Text + "', pretr='" + TextBox2.Text + "' where nume='" + TextBox1.Text + "'";
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
                Label9.Text = "Nu există!";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select Nume, Prenume, TipS, PretR from Clase where nume='" + TextBox1.Text + "'";
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
                    string gry4 = "delete Clase where nume='" + TextBox1.Text + "'and Prenume='" + txtAPrenume.Text + "'and tips='" + txtZi.Text + "'and pretr='" + TextBox2.Text + "'";
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
                Label9.Text = "Nu există!";
            }
        }
    }
}