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
    public partial class Salarii : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS4 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select nume, prenume, salariu, bonus, explicatii, cnp from salarii", con))
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
            string gry = "select nume, prenume, salariu, bonus, explicatii, cnp from salarii where nume='" + txtnume.Text + "'and Prenume='" + txtAPrenume.Text + "'and salariu='" + txtsalariu.Text + "'and bonus='" + txtbonus.Text + "'and explicatii='" + txtexpl.Text + "'and Prenume='" + txtAPrenume.Text + "'and salariu='" + txtsalariu.Text + "'and bonus='" + txtbonus.Text + "'and explicatii='" + txtexpl.Text + "'and cnp='" + txtcnp.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Deja există!";
            }
            else
            {
                String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into salarii values('" + txtnume.Text + "','" + txtAPrenume.Text + "','" +txtsalariu.Text + "','" + txtbonus.Text + "','" + txtexpl.Text + "','" + txtcnp.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label9.ForeColor = Color.Green;
                    Label9.Text = "Angajat și salariu introduse cu succes!";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select nume, prenume, salariu, bonus, explicatii, cnp from salarii where nume='" + txtnume.Text + "'and Prenume='" + txtAPrenume.Text  + "'and cnp='" + txtcnp.Text + "'";
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
                    string gry4 = "update salarii set nume='" + txtnume.Text + "', prenume='" + txtAPrenume.Text + "', salariu='" + txtsalariu.Text + "', bonus='" +
                        txtbonus.Text + "', explicatii='" + txtexpl.Text + "', cnp='" + txtcnp.Text + "'";

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
            string gry = "select nume, prenume, salariu, bonus, explicatii, cnp from salarii where nume='" + txtnume.Text + "'and Prenume='" + txtAPrenume.Text + "'and salariu='" + txtsalariu.Text + "'and bonus='" + txtbonus.Text + "'and explicatii='" + txtexpl.Text + "'and cnp='" + txtcnp.Text + "'";

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
                    string gry4 = "delete salarii where nume='" + txtnume.Text + "'and Prenume='" + txtAPrenume.Text + "'and salariu='" +txtsalariu.Text + "'and bonus='" + txtbonus.Text + "'and explicatii='" + txtexpl.Text + "'and cnp='" + txtcnp.Text + "'";
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