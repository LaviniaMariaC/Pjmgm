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
    public partial class MAbon : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS4 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
           
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select TipServiciu, PretI, Durata,TipRed,PretR, prestator from Abonamente", con))
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
            string gry = "select TipServiciu, PretI,Durata,TipRed,PretR, prestator from Abonamente where  TipServiciu='" + TextBox1.Text + "'and PretI='" + txtAPrenume.Text + "'and Durata='" + txtZi.Text + "'and TipRed='" + TextBox2.Text + "'and PretR='" + TextBox3.Text + "'and prestator='" + TextBox4.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Datele introduse sunt insuficiente!";
            }
            else
            {
                String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Abonamente values('" + TextBox1.Text + "','" + txtAPrenume.Text + "','" + txtZi.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label9.ForeColor = Color.Green;
                    Label9.Text = "Adăugare efectuată cu succes!";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select TipServiciu, PretI,Durata,TipRed,PretR, prestator from Abonamente where TipServiciu='" + TextBox1.Text + "'and PretI='" + txtAPrenume.Text + "'and Durata='" + txtZi.Text + "'and TipRed='" + TextBox2.Text + "'and PretR='" + TextBox3.Text + "'and prestator='" + TextBox4.Text + "'";
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
                    string gry4 = "update Abonamente set Tipserviciu='" + TextBox1.Text + "', PretI='" + txtAPrenume.Text + "', Durata='" + txtZi.Text + "', tipRed='" + TextBox2.Text + "', PretR='" + TextBox3.Text + "', prestator='" + TextBox4.Text + "' where TipServiciu='" + TextBox1.Text + "'and PretI='" + txtAPrenume.Text + "'and Durata='" + txtZi.Text + "'and TipRed='" + TextBox2.Text + "'and PretR='" + TextBox3.Text + "'and prestator='" + TextBox4.Text + "'";
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
                Label9.Text = "Datele introduse nu sunt corecte!";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select TipServiciu, PretI,Durata,TipRed,PretR, prestator from Abonamente where TipServiciu='" + TextBox1.Text + "'and PretI='" + txtAPrenume.Text + "'and Durata='" + txtZi.Text + "'and TipRed='" + TextBox2.Text + "'and PretR='" + TextBox3.Text + "'and prestator='" + TextBox4.Text + "'";
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
                    string gry4 = "delete Abonamente where TipServiciu='" + TextBox1.Text + "'and PretI='" + txtAPrenume.Text + "'and Durata='" + txtZi.Text + "'and TipRed='" + TextBox2.Text + "'and PretR='" + TextBox3.Text + "'and prestator='" + TextBox4.Text + "'";
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
                Label9.Text = "Datele introduse nu sunt corecte!";
            }
        }

    }
}
